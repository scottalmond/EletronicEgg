/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>

void delay_driver_init(void)
{
	delay_init(SysTick);
}

void system_init(void)
{
	init_mcu();

	// GPIO on PB30

	gpio_set_pin_level(PB30,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PB30, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PB30, GPIO_PIN_FUNCTION_OFF);

	delay_driver_init();
	
	while(true)
	{
		gpio_set_pin_level(PB30,false);
		delay_ms(1000);
		gpio_set_pin_level(PB30,true);
		delay_ms(1000);
	}
}
