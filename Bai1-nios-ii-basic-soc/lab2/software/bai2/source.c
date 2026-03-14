/*
 * source.c
 *
 *  Created on: Mar 2, 2026
 *      Author: Admin
 */

#include<io.h>
#include<system.h>

void main()
{
	int temp;
	while(1){
	temp = IORD(SWITCH_BASE,0);
	IOWR (LED_BASE, 0, temp);
	}
}


