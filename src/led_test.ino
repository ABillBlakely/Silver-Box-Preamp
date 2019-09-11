#include <stdio.h>

const uint8_t INPUTS_NUM = 4;
const uint8_t input_led_gpios[INPUTS_NUM] = {32, 33, 25, 26};
const uint8_t input_led_channels[INPUTS_NUM] = {1, 2, 3, 4};

const uint32_t VOLUME_LED_NUM = 7;
const uint8_t volume_led_gpios[VOLUME_LED_NUM] = {16, 17, 18, 19, 23, 27, 13};
const uint8_t volume_led_channels[VOLUME_LED_NUM] = {5, 6, 7, 8, 9, 10, 11};

const uint8_t builtin_led_gpio = 2;
const uint8_t builtin_led_channel = 15;

const uint16_t led_pwm_freq = 25000;
const uint8_t led_resolution_bits = 10;

// maximum reduction that can be set, as a negative dB value.
const int8_t VOL_MIN_dB = -60;

// The global led maximum brightness
uint8_t led_max_brightness_percent = 10;

void setup()
{
    // put your setup code here, to run once:

    Serial.begin(115200);

    ledcAttachPin(builtin_led_gpio, builtin_led_channel);
    ledcSetup(builtin_led_channel, led_pwm_freq, led_resolution_bits);

    setup_input_leds();
    input_led_test();

    setup_volume_leds();
    volume_led_test();ardu
}

void loop()
{
    // put your main code here, to run repeatedly:
    // volume_led_test();

    // TODO: use hall effect sensor as button for input switch and test that.
    // Get pot and use to set volume.
}

uint16_t led_brightness_percent_to_value(uint8_t led_brightness_percent)
{
    uint16_t brightness;
    brightness = (led_brightness_percent << led_resolution_bits) / 100;
    // Serial.print("Computed brightness value: ");
    // Serial.println(brightness);
    return brightness;
}

void input_led_test()
{
    for (int jj=0; jj < INPUTS_NUM; jj++)
    {
        Serial.print("Turning on input ");
        Serial.println(jj);
        input_led_on(jj);
        delay(100);
        Serial.print("Turning off input ");
        Serial.println(jj);
        input_led_off(jj);
    }
}

void setup_input_leds()
{
    for (int kk=0; kk < INPUTS_NUM; kk++)
    {
        ledcAttachPin(input_led_gpios[kk],
                      input_led_channels[kk]);

        ledcSetup(input_led_channels[kk],
                  led_pwm_freq,
                  led_resolution_bits);
    }
}

void input_led_on(uint8_t input_num)
{
    // Function to control the input leds.
    // Separate function so that fade-ins/outs or
    // other details can be easily addedlater
    ledcWrite(input_led_channels[input_num],
              led_brightness_percent_to_value(led_max_brightness_percent));
}

void input_led_off(uint8_t input_num)
{
    // turn input leds off. Should fade out in future.
    ledcWrite(input_led_channels[input_num], 0);
}


void setup_volume_leds()
{
    for (int kk=0; kk < VOLUME_LED_NUM; kk++)
    {
        ledcAttachPin(volume_led_gpios[kk],
                      volume_led_channels[kk]);

        ledcSetup(volume_led_channels[kk],
                  led_pwm_freq,
                  led_resolution_bits);
    }
}

void volume_led_test()
{
    for (int volume = VOL_MIN_dB; volume <= 0; volume++)
    {
        volume_led(volume);
        //delay(100);
    }
    delay(500);
    volume_led(VOL_MIN_dB);
}

void volume_led(int8_t vol_dB)
{
    // vol_dB is a negative value from 0 to VOL_MIN_dB
    uint8_t scale = -1 * VOL_MIN_dB;

    // find maximum broghtness value:
    uint32_t max_brightness = led_brightness_percent_to_value(led_max_brightness_percent);

    // Overscaling minimizes roundoff error.
    uint32_t overscale = 10;
    max_brightness = max_brightness << overscale;

    // determine total scale with all leds:
    uint32_t full_scale = max_brightness * VOLUME_LED_NUM;
    uint32_t steps_per_dB = (full_scale) / scale;
    // int32_t remainder = (full_scale - (steps_per_dB * scale )) >> overscale;

    int32_t steps = (scale + vol_dB) * steps_per_dB;

    uint16_t vol[VOLUME_LED_NUM];

    // Determine the brightness level for each led.
    // values are scaled down at this point.
    for (int qq = 0; qq < VOLUME_LED_NUM; qq++)
    {
        if (steps >= max_brightness)
        {
            vol[qq] = max_brightness >> overscale;
            steps -= max_brightness;
        }
        else if (steps <= 0)
        {
            if ( (qq > 0) && (vol[qq-1] > max_brightness >> (overscale + 1)) )
            {
                // add some pre lighting if previous value was over halfway
                vol[qq] = vol[qq-1] >> (overscale + 1);
            }
            else
            {
                vol[qq] = 0;
            }
        }
        else
        {
            vol[qq] = steps >> overscale;

            steps = 0;
        }
        delay(1);
        // Serial.print("Computed Brightness: ");
        // Serial.println(vol[qq]);
    }

    for (int qq = 0; qq < VOLUME_LED_NUM; qq++)
    {
        ledcWrite(volume_led_channels[qq], vol[qq]);
    }
    // DEBUG INFO
    // char values[80];
    // sprintf(values, "%d, %d, %d", scale, full_scale, remainder);
    // Serial.print("scale, full_scale, step, remainder: ");
    // Serial.println(values);
}

