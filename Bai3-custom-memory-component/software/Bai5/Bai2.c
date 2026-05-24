/*
 * Bai2.c
 *
 *  Created on: Mar 30, 2026
 *      Author: Admin
 */




#include <stdio.h>
#include "system.h"
#include "io.h"

int main() {
    // Khai bao con tro toi 2 vung nho khac nhau
    volatile unsigned int *mem0_ptr = (volatile unsigned int *) MEMORY_0_BASE;
    volatile unsigned int *mem1_ptr = (volatile unsigned int *) MEMORY_V2_0_BASE;

    int i;
    unsigned int data0, data1;

     //1. Ghi du lieu vao Memory 0 va Memory 1
    for (i = 0; i < 8; i++) {
        mem0_ptr[i] = i + 1;   // Ghi 10, 11, 12... vao mem 0
        mem1_ptr[i] = i + 10;  // Ghi 100, 101, 102... vao mem 1
    }

    // 2. Doc va so sanh
    for (i = 0; i < 65; i++) {
        data0 = mem0_ptr[i];
        data1 = mem1_ptr[i];

        printf("Addr Offset [%d] | Mem0: %d | Mem1: %d\n", i, data0, data1);
    }
//    for (i = 0; i < 128; i++){
//    	mem0_ptr[i] = i + 1;
//    	printf("Addr Offset [%d] | Mem0: %d\n", i, mem0_ptr[i]);
//    }
    while(1);
    return 0;
}
