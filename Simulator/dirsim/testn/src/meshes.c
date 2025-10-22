/* Design of 2-D Mesh network. Could extend it to 3-D with some changes */
/* Modified structure compatible with virtual channel allocation */
/* Written by Avinash Karanth, Ohio University                */

#include "sim.h"
#include <stdlib.h>
#include "../../thead.h"

/* Measurement Structure */
struct MEASURE {
	int send;
	int recv;
	double latency;
}measure[MAX_CPU][MAX_CPU];

/* Local Variables */
int pktsz = 0;
int Traffic = 0;
double bernoulli_rate = 0.0;
double poisson_rate = 0.0;
double ncycles = 0.0;
int count = 0;
int recvcount = 0;
double avglat = 0.0;
double generate_rate = 0.0;
int hop = 0;
double avg_power = 0.0;
double throughput = 0.0;
int CURRENT_ROUTE;
int ringnet;

/* Structure to maintain internal switches */
typedef struct SWITCHSET SWITCHSET;
typedef struct SWITCHSET *switchptr;
int data[XNUMPERDIM][YNUMPERDIM];
SEMAPHORE *terminate;

struct SWITCHSET{
	int xcord;							/* x co-ordinate of the switch				*/
	int ycord;							/* y co-ordinate of the switch				*/
	int switchid;						/* ID of the switch							*/
	BUFFER *input_buffer[VC*(DEGREE+1)];/* Input Buffers of the switch (VC)			*/
	BUFFER *output_buffer[DEGREE+1];	/* Output Buffer of the switch				*/
	MUX *input_mux[DEGREE+1];			/* Input Multiplexer (Route_MUX)			*/
	MUX *output_mux[DEGREE+1];			/* Output Multiplexer (Regular_MUX)			*/
	DEMUX *input_demux[DEGREE+1];		/* Input Demultiplexer (Look-Ahead Router)	*/
	DEMUX *output_demux[DEGREE+1];		/* Input Demultiplexer (Regular Router)		*/
	IPORT *iport;						/* Input port to the node					*/
	OPORT *oport;						/* Output port to the node					*/

	switchptr addy;						/* Pointer for +y direction */
	switchptr suby;						/* Pointer for -y direction */
	switchptr addx;						/* Pointer for +x direction */
	switchptr subx;						/* Pointer for -x direction */
}switches[MAX_CPU];

/* Local Functions for Mesh Network */
int FindXcord(int );					/* Find the x co-ordinate					*/
int FindYcord(int );					/* Find the y co-ordinate					*/
SWITCHSET intraconnections(int );		/* Create the switches						*/
int GetSwitchId(int , int );			/* Get the switch ID from co-ordniates		*/
int power(int,int);

/* Dimension-Order Routing (DOR): XY	*/
int router(src,dest,id,dir)
int *src;
int *dest;
int id;
int dir;
{
	int xsrc, ysrc, xdest, ydest, xcur, ycur, cur;
	int x1, y1, x2, y2;
	int switchnum, i, j, temp, vcstart, vcend;
	int demuxret = 0;
	int free;
	DEMUX *demuxid;
	int xoffset, yoffset, value, x, y;
	int routing = -1;

	x1 = y1 = x2 = y2 = 0;

	hop++;
	xsrc = FindXcord(*src);
	ysrc = FindYcord(*src);
	xdest = FindXcord(*dest);
	ydest = FindYcord(*dest);

	cur = id/(2*(DEGREE+1));
	xcur = FindXcord(cur);
	ycur = FindYcord(cur);

	demuxret = 0;

	xoffset = xdest - xcur;
	yoffset = ydest - ycur;

	switch(CURRENT_ROUTE) {

		case DOR_XY:
		case ROMM:
		case VALIANT:
					routing = DOR_XY;
					break;

		case DOR_YX:
					routing = DOR_YX;
					break;

		case WF_MIN_AD:
					routing = WF_MIN_AD;
					break;

		case O1TURN:
					if( dir == 0 )
						routing = DOR_XY;
					else
						routing = DOR_YX;
					break;

		default:
					YS__errmsg("Not known route\n");
					break;
	}

	/* Dimension-Order Routing XY, ROMM and VALIANT use DOR_XY for every phase of the routing */
	if( routing == DOR_XY ) {
		if( xoffset < 0 ) {
			demuxret++;
			return demuxret;
		}

		if( xoffset > 0 ) {
			demuxret = 0;
			return demuxret;
		}

		if( ( xoffset == 0 ) && ( yoffset < 0) ) {
			demuxret = DIMENSION+1;
			return demuxret;
		}

		if( ( xoffset == 0 ) && ( yoffset > 0 ) ) {
			demuxret = DIMENSION;
			return demuxret;
		}

		if( (xoffset == 0) && (yoffset == 0) ) {
			demuxret = DEGREE;
			return demuxret;
		}
	}

	/* Dimension-Order Routing (YX) */
	if( routing == DOR_YX ) {
		if( yoffset < 0 ) {
			demuxret = DIMENSION+1;
			return demuxret;
		}

		if( yoffset > 0 ) {
			demuxret = DIMENSION;
			return demuxret;
		}

		if( ( yoffset == 0 ) && ( xoffset < 0) ) {
			demuxret++;
			return demuxret;
		}

		if( ( yoffset == 0 ) && ( xoffset > 0 ) ) {
			demuxret = 0;
			return demuxret;
		}

		if( (xoffset == 0) && (yoffset == 0) ) {
			demuxret = DEGREE;
			return demuxret;
		}
	}

	/* West-First Minimum Adaptive Routing Function */
	/* Get Buffer Depth gets 0 for credit count and 1 for free VC */
	if( routing == WF_MIN_AD ) {
		if (xoffset < 0 ) {
			demuxret++;
			return demuxret;
		}

		if( (xoffset > 0) && (yoffset < 0) ) {

			x = GetBufferDepth(switches[cur].output_buffer[0], FREE_VC);
			y = GetBufferDepth(switches[cur].output_buffer[DIMENSION+1], FREE_VC);

			if( y > x )
				demuxret = DIMENSION+1;
			return demuxret;
		}

		if( (xoffset > 0) && (yoffset > 0) ) {

			x = GetBufferDepth(switches[cur].output_buffer[0], FREE_VC);
			y = GetBufferDepth(switches[cur].output_buffer[DIMENSION], FREE_VC);

			if( y > x )
				demuxret = DIMENSION;
			return demuxret;
		}

		if( (xoffset > 0) && (yoffset == 0) ) {
			return demuxret;
		}

		if( (xoffset == 0) && (yoffset < 0) ) {
			demuxret = DIMENSION+1;
			return demuxret;
		}

		if( (xoffset == 0) && (yoffset > 0) ) {
			demuxret = DIMENSION;
			return demuxret;
		}

		if( (xoffset == 0) && (yoffset == 0) ) {
			demuxret = DEGREE;
			return demuxret;
		}
	}
}

/* Global variables to increment	*/
int bufnum = 0;
int iportnum = 0;
int oportnum = 0;
int demuxnum = 0;
int muxnum = 0;

/* Sending Process	*/
void UserProcessS()
{
	IPORT *inport;
	PACKET *pkt;
	PKTDATA *pktdata;
	int index, dest;
	int seqno = 10;
	double senddelay = 0.0;
	int npkts;
	double injecttime = 0.0;
	double inter = 0.0;
	double diff = 0.0;
	int retval,i,pktsz1,retval1, tempcpu;

	index = ActivityArgSize(ME);
	inport = (IPORT*)ActivityGetArg(ME);

	npkts = NPKTS;

	while( ncycles > GetSimTime() )
	{
		if( bernoulli_rate > 0.0 )
			retval = RandBernoulli(bernoulli_rate);
		else {
			retval = RandPoisson(poisson_rate);
		}

		if( retval > 0 )
		{
			/* Generate a Packet */
			for( i = 0; i < retval; i++ ) {
				switch(Traffic) {
					case 0:
							do {
								dest = RandUniformInt(0, MAX_CPU - 1 );
							}while(dest == index);

							break;
					case 1:
							retval1 = RandBernoulli(0.25);
							if( retval1 > 0 ) {
								do {
									dest = RandUniformInt(0, MAX_CPU - 1 );
								}while(dest == index);
							}
							else {
								do {
									dest = RandUniformInt(0, MAX_CPU/4);
								}while(dest == index);
							}
							break;
					case 2:
							dest = BitReversal(index);
							break;
					case 3:
							dest = Butterfly(index);
							break;
					case 4:
							dest = Complement(index);
							break;
					case 5:
							dest = MatrixTranspose(index);
							break;
					case 6:
							dest = PerfectShuffle(index);
							break;
					case 7:
							dest = Neighbor(index);
							break;
					case 8:
							dest = Tornado(index);
							break;
					default:
							YS__errmsg("Should Not Be Getting Here");
							break;
				}

				seqno = index + MAX_CPU * (NPKTS - npkts);
				count++;
				measure[index][dest].send = measure[index][dest].send + 1;
				npkts--;

				switch( CURRENT_ROUTE ) {

					case VALIANT:
									tempcpu = valiant_route(index, dest);
									break;

					case ROMM:
									tempcpu = romm_route(index, dest);
									break;

					case O1TURN:
									tempcpu = RandBernoulli(0.5);
									break;

					case DOR_XY:
					case DOR_YX:
					case WF_MIN_AD:
									tempcpu == 100;
									break;

					default:
									YS__errmsg("ERROR\n");
									break;

				}

				for( i = 0; i < pktsz/FLITSZ; i++ ) {
					pkt = NewPacket(seqno,NULL,FLITSZ);
					pktdata = PacketGetData(pkt);
					pktdata->createtime = injecttime;
					pktdata->pkttype = i;
					pktdata->packetsize = pktsz;
					pktdata->intercpu = tempcpu;

					senddelay = PacketSend(pkt, inport, index, dest, i, pktsz, tempcpu);
					if(senddelay < 0.0)
						YS__errmsg("Couldn't send the packet\n");
					SemaphoreWait(IPortSemaphore(inport));
				}
			}
		}
		inter = 1.0;
		injecttime = injecttime + inter;
		if( injecttime > GetSimTime() ) {
			diff = injecttime - GetSimTime();
			ProcessDelay(diff);
		}
	}
	SemaphoreWait(terminate);
	SemaphoreSignal(terminate);
}

/* Receiving Process	*/
void UserProcessR()
{
	OPORT *outport;
	PACKET *pkt;
	PKTDATA *pktdata;
	int index,i,j;

	index = ActivityArgSize(ME);
	outport = (OPORT*)ActivityGetArg(ME);

	while (1)
	{
		if (OPortPackets(outport))
		{
			pkt = PacketReceive(outport);
			pktdata = PacketGetData(pkt);

			if(pktdata->destcpu != index )
			{
				printf("Receiver %d\n", index);
				YS__errmsg("Incorrect destination received\n");
			}

			if( (pktdata->pkttype == (pktdata->packetsize - 1)/FLITSZ) ) {

				measure[pktdata->srccpu][pktdata->destcpu].latency =
					measure[pktdata->srccpu][pktdata->destcpu].latency + (GetSimTime() - pktdata->createtime);
				measure[pktdata->srccpu][pktdata->destcpu].recv = measure[pktdata->srccpu][pktdata->destcpu].recv + 1;
				recvcount++;
				avglat = avglat + (GetSimTime() - pktdata->createtime);
				if( recvcount%100 == 0 ) {
					printf("%g\n", avglat/100.0);
					avglat = 0.0;
					count = 0;
				}
				data[(pktdata->srccpu)%XNUMPERDIM][(pktdata->srccpu)/XNUMPERDIM] =
				data[(pktdata->srccpu)%XNUMPERDIM][(pktdata->srccpu)/XNUMPERDIM] + 1;
				avg_power = pktdata->powers + avg_power;
			}
			else {
				pktdata->pktsize = 0;
			}

			if( count == recvcount )
				SemaphoreSignal(terminate);
			PacketFree(pkt);
		}
		else
		{
			SemaphoreWait(OPortSemaphore(outport));
		}
	}
}

/* Creating the network with parameters */
void UserMain(argc, argv)
int argc;
char** argv;
{
  PROCESS* process;
  int num_switch, iports, previous, next,i, j, partial_send, total;
  char namestr[31];
  int ax, ay, sx, sy, var, k;
  int total_send = 0;
  int total_recv = 0;
  double total_latency = 0.0;
  double network_load, netcap, byte_node_cycle, partial_latency, network_loadA, bits_node_cycle;
  double util = 0.0;
  int avg_ibufs, avg_xbar, avg_lnks;
  int avg_rcs, avg_vcs, avg_swtchs;

  network_loadA = 0.0;

  if (argc > 1)
  	pktsz = atoi(argv[1]);

  if (argc > 2)
  	network_load = ( (double)atoi(argv[2]))/10.0;

  if (argc > 3)
  	network_loadA = ( (double)atoi(argv[3]))/100.0;

  if (argc > 4)
  	ncycles = (double)atoi(argv[4]);

  if (argc > 5)
	Traffic = atoi(argv[5]);

  if (argc > 6)
  	CURRENT_ROUTE = atoi(argv[6]);
  else
  	CURRENT_ROUTE = DOR_XY;

  ringnet = 0;

  network_load = network_load + network_loadA;

  if( pktsz <= 0 )
   	pktsz = PKTSZ;

  if( ( network_load < 0 ) || ( network_load > 1 ) )
  	network_load = NETWORK_LOAD;

  if( ncycles <= 0 )
   	ncycles = NCYCLES;

	netcap = ((NETWORK_CAPACITY_MESH)*network_load);
  	byte_node_cycle = (CYCLETIME*netcap)/8.0;
  	generate_rate = (PHITSZ*(double)(pktsz))/(8.0*byte_node_cycle);

  	if( generate_rate > 1.0 ) {
  		bernoulli_rate = 1.0/generate_rate;
  		poisson_rate = 0.0;
  	}
  	else {
  		poisson_rate = 1.0/generate_rate;
  		bernoulli_rate = 0.0;
  	}

      printf("****************BEGIN SIMULATION***************\n");
      printf("MAXIMUM SIZE = %d\n", MAX_CPU);
      printf("Packet Size = %d\n", pktsz);
      printf("Network Load = %g\n", network_load);
      printf("Network Capacity = %g\n", netcap);
      printf("Byte Per Node Per Cycle %g\n",byte_node_cycle );
      printf("Generation Rate %g, Packets per Cycle %g\n",generate_rate, (byte_node_cycle*MAX_CPU)/(((double)pktsz*PHITSZ)/8.0) );
      printf("Bernoulli Rate = %g\n", bernoulli_rate);
      printf("Cycles to be simulated = %g\n", ncycles);
      printf("*******************************\n");
      printf("Number of VCs %d\n", VC);
      printf("Number of Input Buffers Per VC %d\n", IBUFSZ/4 );
      printf("Number of Output Buffers %d\n", OBUFSZ/4);
      printf("Number of credits per VC %d\n", CREDITS);

      printf("*******************************\n");
      printf("Approx Number of Buffers Per VC %d\n", (((IBUFSZ*VC)-OBUFSZ)/(VC*4)) );
      printf("Total Buffer Capacity Available %d\n", BUFSZTOTAL );
	  printf("*******************************\n");

	switch( CURRENT_ROUTE ) {
		case 0:
				printf("Dimension Order Routing XY\n");
				break;

		case 1:
		  		printf("Dimension Order Routing YX\n");
		  		break;

		case 2:
				printf("ROMM: Randomized Oblivious Multiphase Minimal Routing\n");
		  		break;

		case 3:
				printf("VALIANT Algorithm\n");
				break;

		case 4:
				printf("O1TURN\n");
				break;

		case 5:
				printf("West-First Minimum Adaptive\n");
				break;

		default:
				printf("Unknown Routing\n");
				YS__errmsg();
				break;
	}

    switch(Traffic) {
		case 0:
				printf("Uniform Traffic Distribution\n");
				break;
		case 1:
				printf("Non-Uniform Traffic Distribution\n");
				break;
		case 2:
				printf("BitReversal\n");
				break;
		case 3:
				printf("Butterfly\n");
				break;
		case 4:
				printf("Complement\n");
				break;
		case 5:
				printf("Matrix Transpose\n");
				break;
		case 6:
				printf("Perfect Shuffle\n");
				break;
		case 7:
				printf("Neigbor\n");
				break;
		case 8:
				printf("Worst Case Traffic: Tornado\n");
				break;
		default:
				YS__errmsg("Should not get here");
	}

  	YacRandomInit();
  	SetSysRand(YacRandom);

  	for( i = 0; i < MAX_CPU; i++ ) {
  		for( j = 0; j < MAX_CPU; j++ ) {
  			measure[i][j].send = 0;
  			measure[i][j].recv = 0;
  			measure[i][j].latency = 0.0;
  		}
  	}


  for( i = XNUMPERDIM - 1; i >= 0; i-- ) {
		for( j = 0; j < XNUMPERDIM; j++ ) {
			data[j][i] = 0;
		}
	}

	for( i = 0; i < MAX_CPU; i++ ) {
		switches[i] = intraconnections(i);
	}

	for( i = 0; i < MAX_CPU; i++ ) {
		/* Do the connections in +x and -x directions */
		/* Do the connections in +y and -y directions */
		/* Do for each switch, mux to buf connections */
		/* Directions: 0 = +x */
		/* Directions: 1 = -x */
		/* Directions: 2 = +y */
		/* Directions: 3 = -y */

		k = 0;
		/* +x dimension */
		ax = GetSwitchId(((switches[i].xcord + 1)%(XNUMPERDIM)), switches[i].ycord);
		switches[i].addx = &switches[ax];
		NetworkConnect(switches[i].output_buffer[k], (switches[i].addx)->input_demux[k], 0, 0);
		DemuxCreditBuffer((switches[i].addx)->input_demux[k], switches[i].output_buffer[k]);
		k++;

		/* -x dimension */
		if( (switches[i].xcord - 1) < 0 )
			var = XNUMPERDIM - 1;
		else
			var = switches[i].xcord - 1;
		sx = GetSwitchId(var, switches[i].ycord);
		switches[i].subx = &switches[sx];
		NetworkConnect(switches[i].output_buffer[k], (switches[i].subx)->input_demux[k], 0, 0);
		DemuxCreditBuffer((switches[i].subx)->input_demux[k], switches[i].output_buffer[k]);
		k++;

		/* +y dimension */
		ay = GetSwitchId(switches[i].xcord, ((switches[i].ycord + 1)%(YNUMPERDIM)) );
		switches[i].addy = &switches[ay];
		NetworkConnect(switches[i].output_buffer[k], (switches[i].addy)->input_demux[k], 0, 0);
		DemuxCreditBuffer((switches[i].addy)->input_demux[k], switches[i].output_buffer[k]);
		k++;

		/* -y dimension */
		if( (switches[i].ycord - 1) < 0 )
			var = YNUMPERDIM - 1;
		else
			var = switches[i].ycord - 1;
		sy = GetSwitchId(switches[i].xcord, var);
		switches[i].suby = &switches[sy];
		NetworkConnect(switches[i].output_buffer[k], (switches[i].suby)->input_demux[k], 0, 0);
		DemuxCreditBuffer((switches[i].suby)->input_demux[k], switches[i].output_buffer[k]);
		k++;
	}

	for( i = 0; i < MAX_CPU; i++ )
	{
		sprintf(namestr, "UserSend%d", i);
		process = NewProcess(namestr,UserProcessS,0);	/* Create sender process 0       */
		ActivitySetArg(process,switches[i].iport,i);	/* Pass process its id           */
  		ActivitySchedTime(process, 0.0, INDEPENDENT);	/* Schedule process              */

		sprintf(namestr, "UserRecv%d", i);
		process = NewProcess(namestr,UserProcessR,0);	/* Create sender process 0       */
		ActivitySetArg(process,switches[i].oport,i);	/* Pass process its id           */
  		ActivitySchedTime(process, 0.0, INDEPENDENT);	/* Schedule process              */

	}

	NetworkCollectStats(NETTIME,NOHIST,0.0,0.0);
	NetworkCollectStats(BLKTIME,NOHIST,0.0,0.0);
	NetworkCollectStats(OPORTTIME,NOHIST,0.0,0.0);
	NetworkCollectStats(MOVETIME,NOHIST,0.0,0.0);
	NetworkCollectStats(LIFETIME,NOHIST,0.0,0.0);

	sprintf(namestr, "term");
	terminate = NewSemaphore(namestr, 0);

	DriverRun(0.0);                                    /* Start the simulation          */
	total_send = 0;
	total_recv = 0;
	total_latency = 0.0;
	partial_send = 0;
	partial_latency = 0.0;
	for( i = 0; i < MAX_CPU; i++ ) {
		for( j = 0; j < MAX_CPU; j++ ) {
			total_send = total_send + measure[i][j].send;
			total_recv = total_recv + measure[i][j].recv;
			total_latency = total_latency + measure[i][j].latency;
			partial_send = partial_send + measure[i][j].send;
			partial_latency = partial_latency + measure[i][j].latency;
		}
		/*printf("NODE %d: Sent Packets %d Average Latency %g\n", i, partial_send, partial_latency/(double)partial_send);*/
		partial_send = 0;
		partial_latency = 0.0;
	}

	printf("End Simulation %g\n", GetSimTime() );
	printf("******************************************************\n");
	printf("Sent Packets %d \n", total_send);
	printf("Received Packets %d \n", total_recv);

	throughput = (total_send*pktsz)/(ncycles*(double)(MAX_CPU));

	printf("Achieved Throughput %g\n", throughput);
	printf("Average Latency %g\n", (total_latency/(double)total_send) );

	total = 0;
	for( i = 0; i < MAX_CPU; i++ ) {
		for( j = 0; j < DEGREE; j++ ) {
			total = total + CongestionCounter(switches[i].output_buffer[j]);
		}
	}

	avg_power = 0.0;
	avg_ibufs = 0;
	avg_xbar = 0;
	avg_lnks = 0;
	avg_rcs = 0;
	avg_vcs = 0;
	avg_swtchs = 0;
	for( i = 0; i < MAX_CPU; i++ ) {
		avg_power = avg_power + PowerReturn(switches[i].oport,0);
		avg_ibufs = avg_ibufs + PowerReturn(switches[i].oport,1);
		avg_xbar = avg_xbar + PowerReturn(switches[i].oport,2);
		avg_lnks = avg_lnks + PowerReturn(switches[i].oport,3);
		avg_rcs = avg_rcs + PowerReturn(switches[i].oport,4);
		avg_vcs = avg_vcs + PowerReturn(switches[i].oport,5);
		avg_swtchs = avg_swtchs + PowerReturn(switches[i].oport,6);
 	}

	printf("Input Buffer Traversal %d\n", avg_ibufs);
	printf("Crossbar Traversal %d\n", avg_xbar);
	printf("Link Traversal %d\n", avg_lnks);

	printf("Routing Computation %d\n", avg_rcs);
	printf("Virtual Channel Allocation %d\n", avg_vcs);
	printf("Switch Allocation %d\n", avg_swtchs);

	printf("Congestion %d\n", total);
	printf("Total Power %g, Average Power %g\n", avg_power+(total*CONGESTION_POWER),
				((avg_power+(total*CONGESTION_POWER))/(double)total_send) );



	for( i = XNUMPERDIM - 1; i >= 0; i-- ) {
		for( j = 0; j < XNUMPERDIM; j++ ) {
			printf("%d\t", data[j][i]);
		}
		printf("\n");
	}

	NetworkStatRept();
}


/* Router and Switch Connections implemented */
SWITCHSET intraconnections(int index)
{

	BUFFER	*buf0, *buf1;
	MUX		*mux0;
	DEMUX	*demux0;
	IPORT	*iport0;
	OPORT	*oport0;
	SWITCHSET *switchlocal;
	int i, j, k, m;
	int curbuf, endbuf;

	switches[index].switchid = index;
	switches[index].xcord = FindXcord(index);
	switches[index].ycord = FindYcord(index);

	/* Input Buffers for Virtual Channel Implementation	*/
	for( i = 0; i < (DEGREE+1)*VC; i++ ) {
		buf0 = NewBuffer(bufnum++, IBUFSZ, INPUT_BUFFER);
		switches[index].input_buffer[i] = buf0;
	}

	/* Output Buffers allowing Switch Traversal (ST) */
	for( i = 0; i < (DEGREE+1); i++ ) {
		buf0 = NewBuffer(bufnum++, OBUFSZ, OUTPUT_BUFFER );
		switches[index].output_buffer[i] = buf0;
	}

	/* Look-Ahead Routing Demuxes */
	for( i = 0; i < (DEGREE+1); i++ ) {
		demux0 = NewDemux(demuxnum++, VC+(DEGREE+1), router, LOOKAHEAD_DEMUX );
		switches[index].input_demux[i] = demux0;
	}

	/* Regular Routing Demuxes (RC) */
	for( i = 0; i < (DEGREE+1); i++ ) {
		demux0 = NewDemux(demuxnum++, (DEGREE+1), router, REGULAR_DEMUX );
		switches[index].output_demux[i] = demux0;
	}

	/* Routing/Virtual Channel Allocating Muxes (VA)  */
	for( i = 0; i < (DEGREE+1); i++ ) {
		mux0 = NewMux(muxnum++, VC, VIRTUAL_ALLOC_MUX );
		switches[index].input_mux[i] = mux0;
	}

	/* Switch Allocating Muxes (SA)  */
	for( i = 0; i < (DEGREE+1); i++ ) {
		mux0 = NewMux(muxnum++, 2*(DEGREE+1), SWITCH_ALLOC_MUX );
		switches[index].output_mux[i] = mux0;
	}

	/***************************************************/
	/* Intra-Switch Connections: Component Connections */
	k = 0;
	for( i = 0; i < (DEGREE+1); i++ ) {
		for( j = 0; j < VC; j++ ) {
			/* LookAhead Router Demux to Input Virtual Channel Buffers */
			NetworkConnect(switches[index].input_demux[i], switches[index].input_buffer[k], j, 0);
			BufferCreditDemux(switches[index].input_buffer[k],switches[index].input_demux[i]);

			/* Virtual Channel Buffers to Input Virtual Allocating Mux */
			NetworkConnect(switches[index].input_buffer[k], switches[index].input_mux[i], 0, j);
			k++;
		}
		/* Input Virtual Allocating Mux to Regular Routing Demux */
		NetworkConnect(switches[index].input_mux[i], switches[index].output_demux[i], 0, 0);

		/* Output Switch Allocating Mux to Output Buffers */
		NetworkConnect(switches[index].output_mux[i], switches[index].output_buffer[i], 0, 0);
	}

	/* Intra-Switch Connections: Switch Connections */
	for( i = 0; i < DEGREE+1; i++ ) {
		for( j = 0; j < DEGREE+1; j++ ) {
			NetworkConnect(switches[index].output_demux[i], switches[index].output_mux[j], j, i);
		}
	}

	/* Intra-Switch Connections: Node Connections */
	iport0 = NewIPort(iportnum++, NPORTPKTS);
	oport0 = NewOPort(oportnum++, NPORTPKTS);
	switches[index].iport = iport0;
	switches[index].oport = oport0;
	NetworkConnect(switches[index].iport, switches[index].input_demux[DEGREE], 0, 0);
	NetworkConnect(switches[index].output_buffer[DEGREE], switches[index].oport, 0, 0);

	return switches[index];
}

int FindXcord(int identity)
{
	return (identity%XNUMPERDIM);
}

int FindYcord(int identity)
{
	return (identity/YNUMPERDIM);
}

int GetSwitchId(int cordx, int cordy)
{
    return cordy * XNUMPERDIM + cordx;
}

int power(int base, int n)
{
	int p;

	for(p = 1; n > 0; --n )
	{
		p = p * base;
	}
	return p;
}

/***************************** Permutation Pattern *****************************/
/********************************* Bit Reversal ********************************/

int BitReversal(int source)
{
	int dest, src, i, sbit;
	int bin_dest[DIMENSION1];

	src = source;
	for( i = DIMENSION1-1; i >= 0; i-- )
	{
		sbit = src%2;
		bin_dest[i] = sbit;
		src = src/2;
	}

	dest = 0;
	for( i = 0; i < DIMENSION1; i++ )
		dest = dest + ((bin_dest[i])*(power(2,i)));

	return dest;
}

/***************************** Permutation Pattern *****************************/
/********************************** Butterfly **********************************/

int Butterfly(int source)
{
	int dest, src, i, sbit, temp;
	int bin_dest[DIMENSION1];

	src = source;
	for( i = 0; i < DIMENSION1; i++ )
	{
		sbit = src%2;
		bin_dest[i] = sbit;
		src = src/2;
	}

	temp = bin_dest[0];
	bin_dest[0] = bin_dest[DIMENSION1-1];
	bin_dest[DIMENSION1-1] = temp;

	dest = 0;
	for( i = 0; i < DIMENSION1; i++ )
		dest = dest + ((bin_dest[i])*(power(2,i)));

	return dest;
}

/***************************** Permutation Pattern *****************************/
/********************************** Complement *********************************/

int Complement(int source)
{
	int dest, src, i, sbit;
	int bin_dest[DIMENSION1];

	src = source;
	for( i = 0; i < DIMENSION1; i++ )
	{
		sbit = src%2;
		bin_dest[i] = ( (sbit == 0) ? 1 : 0 );
		src = src/2;
	}

	dest = 0;
	for( i = 0; i < DIMENSION1; i++ )
		dest = dest + ((bin_dest[i])*(power(2,i)));

	return dest;
}

/***************************** Permutation Pattern *****************************/
/******************************* Matrix Transpose ******************************/

int MatrixTranspose(int source)
{
	int dest, src, i,j, sbit;
	int bin_src[DIMENSION1], bin_dest[DIMENSION1];

	src = source;
	for( i = 0; i < DIMENSION1; i++ )
	{
		sbit = src%2;
		bin_src[i] = sbit;
		src = src/2;
	}

	j = DIMENSION1 - 1;
	for( i = (DIMENSION1/2)-1; i >= 0; i-- )
	{
		bin_dest[j] = bin_src[i];
		j--;
	}

	for( i = DIMENSION1 - 1; i >= DIMENSION1/2; i-- )
	{
		bin_dest[j] = bin_src[i];
		j--;
	}

	dest = 0;
	for( i = 0; i < DIMENSION1; i++ )
		dest = dest + ((bin_dest[i])*(power(2,i)));

	return dest;
}

/***************************** Permutation Pattern *****************************/
/******************************* Perfect Shuffle *******************************/

int PerfectShuffle(int source)
{
	int dest1, dest, src, i, sbit, j;
	int bin_dest[DIMENSION1], bin_src[DIMENSION1];

	src = source;
	for( i = 0; i < DIMENSION1; i++ )
	{
		sbit = src%2;
		bin_src[i] = sbit;
		src = src/2;
	}

	j = 1;
	for( i = 0; i < DIMENSION1 - 1; i++ )
	{
		bin_dest[j] = bin_src[i];
		j++;
	}
	bin_dest[0] = bin_src[DIMENSION1-1];

	dest = 0;
	for( i = 0; i < DIMENSION1; i++ )
		dest = dest + ((bin_dest[i])*(power(2,i)));

	return dest;
}

/***************************** Permutation Pattern *****************************/
/********************************** Neighbor ***********************************/

int Neighbor(int source)
{
	int dest;

	if( source%2 != 0 )
		dest = source - 1;
	else
		dest = source + 1;

	return dest;
}

/*************************** Worst-Case Traffic Pattern *************************/
/*********************************** Tornado ************************************/
/* Should work for 8-ary, 2-cube networks */
int Tornado(int source)
{
	int dest, xsrc, ysrc, ydest;

	xsrc = FindXcord( source );
	ysrc = FindYcord( source );

	ydest = (ysrc + (YNUMPERDIM - 1)/2)%(YNUMPERDIM);
	dest = GetSwitchId(xsrc, ydest);

	return dest;
}

/***************************** Routing Variations  *****************************/
/********************************** VALIANT ************************************/

int valiant_route( int source, int dest )
{
	int tempcpu;

	do {
		tempcpu = RandUniformInt(0, MAX_CPU - 1 );
	}while( tempcpu == source );

	return tempcpu;
}

/***************************** Routing Variations  *****************************/
/************************************ ROMM *************************************/

int romm_route( int source, int dest )
{
	int tempcpu;
	int xsrc, ysrc, xdest, ydest, xtemp, ytemp, xlarge, xsmall, ylarge, ysmall;
	int set = 0;

	xsrc = FindXcord( source );
	ysrc = FindYcord( source );
	xdest = FindXcord( dest );
	ydest = FindYcord( dest );

	do {
		tempcpu = RandUniformInt(0, MAX_CPU - 1 );

		xtemp = FindXcord( tempcpu );
		ytemp = FindYcord( tempcpu );

		if( xsrc >= xdest ) {
			xlarge = xsrc;
			xsmall = xdest;
		}
		else {
			xlarge = xdest;
			xsmall = xsrc;
		}

		if( (xtemp >= xsmall) && (xtemp <= xlarge) ) {
			if( ysrc >= ydest ) {
				ylarge = ysrc;
				ysmall = ydest;
			}
			else {
				ylarge = ydest;
				ysmall = ysrc;
			}

			if( (ytemp >= ysmall) && (ytemp <= ylarge) ) {
				set = 1;
				break;
			}
		}
	}while( set == 0 );

	return tempcpu;
}

