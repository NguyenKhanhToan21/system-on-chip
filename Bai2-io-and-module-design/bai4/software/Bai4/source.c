/*
 * source.c
 *
 *  Created on: Mar 15, 2026
 *      Author: Admin
 */
#include "stdio.h"
#include "io.h"
#include "system.h"

void main(){
	int a, b, x, y;
	a = 2 & 0xf;
	b = 3 & 0xf;
	x = 5 & 0xf;
	IOWR (COMPUTE_0_BASE, 0, a);
	IOWR (COMPUTE_0_BASE, 1, b);
	IOWR (COMPUTE_0_BASE, 2, x);
	y = IORD(COMPUTE_0_BASE, 3);
	printf ("y = %d*x + %d, x = %d\n", a, b, y, x);
}


