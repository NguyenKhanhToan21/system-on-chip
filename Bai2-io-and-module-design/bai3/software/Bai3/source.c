/*
 * source.c
 *
 *  Created on: Mar 15, 2026
 *      Author: Admin
 */
#include<stdio.h>
#include "io.h"
#include "system.h"

int main(){
	short temp;
	while (1){
		temp = IORD(SWITCHES_0_BASE, 0);
		IOWR(RED_LEDS_0_BASE, 0, temp);
	}
}



