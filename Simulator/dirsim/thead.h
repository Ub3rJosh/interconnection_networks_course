/*************************************************************************************/
/*    Various System Parameters for Electrical Network Design       				 */
/*************************************************************************************/
/*   This rhead.h file contains -> network specification; network size; simulation
     specification; channel/link signal/length specification; some parameters are from
     Optiwave System Simulation

     Time (NANOSECONDS), Length (METRES) and size (BITS) */

/************************************************************************************/
/****************************** PORT PARAMETERS *************************************/
/************************************************************************************/

#define NPORTPKTS				1		/* Number of Packets Per Port at the Node	*/
#define BPORTPKTS				1

#define DIMENSION				2		/* Number of Dimensions in Torus			*/
#define XNUMPERDIM				4		/* Number of Nodes in X-Dimension			*/
#define YNUMPERDIM				4		/* Number of Nodes in Y-Dimension			*/
#define DEGREE					DIMENSION*2	/* Node Degree				*/
#define MAX_CPU					(XNUMPERDIM)*(YNUMPERDIM)	/* Max number of nodes	*/
#define DIMENSION1				4		/* Number of Bits Required to Represent Max
										   Nodes									*/
#define DIM						6		/* Number of Dimensions for Hypercube		*/

/************************************************************************************/
/******************************* CONSTANTS USED *************************************/
/************************************************************************************/

#define INPUT_BUFFER			0
#define OUTPUT_BUFFER			1
#define LOOKAHEAD_DEMUX			2
#define REGULAR_DEMUX			3
#define VIRTUAL_ALLOC_MUX		4
#define SWITCH_ALLOC_MUX		5
#define CIRCUIT_INPUT_BUFFER	6
#define CIRCUIT_OUTPUT_BUFFER	7
#define PROBE_DEMUX				8
#define ACK_DEMUX				9
#define PROBE_MUX				10
#define ACK_MUX					11

/************************************************************************************/
/************************* POWER CONSTANTS USED *************************************/
/************************************************************************************/

#define BUFFER_POWER			1.9
#define LINK_POWER				2.402
#define CONGESTION_POWER		0.0070
#define CROSSBAR_POWER			2.16

/************************************************************************************/
/****************************** SIMULATION PARAMETERS *******************************/
/************************************************************************************/

#define LAMBDA				0.5		/* Rate of Traffic Arrival			*/
#define INTERARRIVAL		1.0		/* Inter-arrival Mean Time			*/
#define NPKTS				1		/* Number of Packets Simulated		*/
#define NCYCLES				10000.0	/* Number of Cycles Simulated		*/
#define MEASURETIME			5000.0
#define DRAINTIME			15000.0
#define VC					4		/* Virtual Channels					*/

#define INJECTTIME			1.0		/* Reduced Cycle Time				*/
#define BERNOULLI_RATE		0.2		/* Default Bernoulli Rate			*/
#define POISSON_RATE		LAMBDA	/* Rate of arrival of packets		*/
#define EXPONENTIAL_RATE	1/POISSION_RATE
									/* Inter-arrival Rate 				*/
#define PHITSZ				32		/* Number of bits per phit			*/
#define FLITSZ				4		/* Number of phits in a Flit		*/
#define IBUFSZ				16		/* Buffer Size in phits				*/
#define OBUFSZ				32
#define PKTSZINBITS			PHITSZ*FLITSZ
									/* Packet Size in Bits				*/
#define CREDITS				4
#define ROUTER_FREQ			0.1		/* in Ghz (100 MHz)					*/
#define ROUTER_LATENCY		1/ROUTER_FREQ
									/* Latency to move a Flit  			*/
#define CYCLETIME			0.125	/* Cycle Latency in nanoseconds		*/
#define ARB_LATENCY			1		/* Arbitration Latency (Mux)		*/
#define MUX_LATENCY			1		/* Switching Latency (Mux)			*/
#define DEMUX_LATENCY		1		/* Routing Latency (Demux)			*/
#define PORT_LATENCY		2.0		/* Receiving Port Latency			*/
#define DEMUXDELAY			4.0
#define MUXDELAY			4.0
#define ROUTE_DELAY			4.0
#define VIRTUAL_ALLOC_DELAY	4.0
#define SWITCH_ALLOC_DELAY	4.0
#define CREDIT_LOOP_DELAY	4.0
#define PKTSZ				4

#define BUFSZTOTAL			(IBUFSZ*VC)-OBUFSZ
/*#define BUFSZTOTAL			64*/

#define LINEMAX 			256

/*************************************************************************************/
/****************************** TRAFFIC PATTERNS *************************************/
/*************************************************************************************/

#define UNIDIRECTION_PING		0
#define BIDIRECTION_PING		1
#define UNIFORM_TRAFFIC			2
#define BIT_REVERSAL			3
#define BUTTERFLY				4
#define COMPLEMENT				5
#define	MATRIX_TRANSPOSE		6
#define PERFECT_SHUFFLE			7
#define NEIGHBOR				8
#define	HOTSPOT					9

/*#define NETWORK_CAPACITY_MESH	(PHITSZ/CYCLETIME)*2*/
#define NETWORK_CAPACITY_MESH	(PHITSZ/CYCLETIME)
#define NETWORK_CAPACITY_TORI	(PHITSZ/CYCLETIME)
#define NETWORK_LOAD			0.1

/************************************************************************************/
/********************************** ROUTING FUNCTIONS *******************************/
/************************************************************************************/

/*#define CURRENT_ROUTE			1*/
#define BYPASS					0

#define DOR_XY					0
#define DOR_YX					1
#define ROMM					2
#define	VALIANT					3
#define O1TURN					4
#define WF_MIN_AD				5

#define BUFFER_DEPTH			0
#define FREE_VC					1

/************************************************************************************/
/********************************** SWITCHING FUNCTIONS *****************************/
/************************************************************************************/

#define CKTPROBE				10
#define CKTACK					11
#define CKTNACK					12
#define CKTDATA					13
#define WORMDATA				14

/************************************************************************************/
/********************************** TRAFFIC FUNCTIONS *******************************/
/************************************************************************************/

int UnidirectionalPing(int);
int BidirectionalPing(int);
int UniformTraffic(int);
int BitReversal(int);
int Butterfly(int);
int Complement(int);
int MatrixTranspose(int);
int PerfectShuffle(int);
int Neighbor(int);
int Tornado(int);

/************************************************************************************/
/********************************** ROUTING FUNCTIONS *******************************/
/************************************************************************************/

int valiant_route( int, int );
int romm_route( int, int);

extern int CURRENT_ROUTE;
