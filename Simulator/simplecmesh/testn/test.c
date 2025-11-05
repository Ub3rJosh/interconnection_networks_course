#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// function to reverse the string
void reverse(char *bin, int left, int right) {
    while (left < right) {
        char temp = bin[left];
        bin[left] = bin[right];
        bin[right] = temp;
        left++;
        right--;
    }
}

// function to convert decimal to binary
char* decToBinary(int n, int *bin) {
    int index = 0;
	// int bin[K] = {0};
    
  
    while (n > 0) {
        int bit = n % 2;
        bin[index++] = '0' + bit;
        n /= 2;
    }
    bin[index] = '\0';
  
	// Reverse the binary string
	reverse(bin, 0, index-1);
  	return bin;
}

int main() {
    int n = 12;
    char* bin = decToBinary(n);
  
    printf("%s\n", bin);
    free(bin);
    return 0;
}