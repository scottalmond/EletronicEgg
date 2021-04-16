#include <atmel_start.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	/* Replace with your application code */
	led_demo();
}

void led_demo(void)
{
	while (1) {
		gpio_set_pin_level(LED_P, true);
		gpio_set_pin_level(LED_N, false);
		delay_ms(500);
		gpio_set_pin_level(LED_P, false);
		gpio_set_pin_level(LED_N, true);
		delay_ms(1500);
	}
}
