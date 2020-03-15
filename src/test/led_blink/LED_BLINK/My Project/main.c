#include <atmel_start.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	/* Replace with your application code */
	while (1) {
		gpio_set_pin_level(PB22, false);
		gpio_set_pin_level(PB23, true);
		delay_ms(500);
		gpio_set_pin_level(PB22, true);
		gpio_set_pin_level(PB23, false);
		delay_ms(500);
	}
}
