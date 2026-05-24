/*
 * Bai1.c
 *
 *  Created on: Mar 30, 2026
 *      Author: Admin
 */
#include<stdio.h>
#include "system.h"

int main(){
	volatile unsigned int *mem_ptr = (volatile unsigned int *) MEMORY_0_BASE;
	int i;
	unsigned int read_data;
	for (i = 0; i < 16; i++){
		mem_ptr[i] = i + 1;
	}
	for (i = 0; i < 16; i++) {
		read_data = mem_ptr[i];
		printf("data[%d] = %d\n", &mem_ptr[i], read_data );
	}
	while(1);
	return 0;
}
