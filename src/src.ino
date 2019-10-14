#include <stdio.h>

/*
On Naming Convention:
Device will have 4 physical HID elements:
    1. Volume knob
    2. Volume indication LEDs
    3. source switch button
    4. source indicator LEDs
There are additional virtual (smart home) HID elements:
    1. Volume remote control
    2. source remote control
Virtual elements will use the same indicator elements.

Variable names should indicate the function (volume, source) and device type
(led, adc, button, mqtt). Structs should be used to organize related information
together.

global variables should be prefixed with g_
global constants should be all uppercase.

variables values that have meaningful units should have the unit as a suffix to
the variable. I.E. xxx_dB, xxx_percent, xxx_Hz etc.
*/

//
// SOURCE SELECTION:
//

struct
{
    uint8_t value = 0;
    const uint8_t gpio = 5;
    const uint8_t mode = INPUT_PULLUP;
} source_button;


const uint8_t SOURCE_NUM = 4;

struct
{
    const uint8_t gpios[SOURCE_NUM] = {32, 33, 25, 26};
    const uint8_t channels[SOURCE_NUM] = {1, 2, 3, 4};
} source_leds;

//
// VOLUME CONTROL:
//

const uint32_t VOLUME_LED_NUM = 7;

struct
{
    const uint8_t gpios[VOLUME_LED_NUM] = {16, 17, 18, 19, 23, 27, 13};
    const uint8_t channels[VOLUME_LED_NUM] = {5, 6, 7, 8, 9, 10, 11};
} volume_leds;

struct
{
    const uint8_t gpio = 36;
    const uint8_t resolution = 12;
} volume_adc;

// maximum reduction that can be set, as a negative dB value.
const int8_t g_vol_min_dB = -60;

//
// OTHER:
//

const uint16_t g_led_pwm_freq = 25000;
const uint8_t g_led_resolution_bits = 10;

const uint8_t builtin_led_gpio = 2;
const uint8_t builtin_led_channel = 15;

const uint8_t LOCAL = 0;
const uint8_t REMOTE = 1;


// The global led maximum brightness
uint8_t g_led_max_brightness_percent = 100;

uint8_t vol_dB = g_vol_min_dB;
uint8_t vol_dB_local = g_vol_min_dB;
uint8_t vol_dB_remote = g_vol_min_dB;
uint8_t volume_control = LOCAL;

void setup()
{
    // put your setup code here, to run once:
    pinMode(source_button.gpio, source_button.mode);

    Serial.begin(115200);

    ledcAttachPin(builtin_led_gpio, builtin_led_channel);
    ledcSetup(builtin_led_channel, g_led_pwm_freq, g_led_resolution_bits);

    source_led_setup();
    source_led_test();

    volume_led_setup();
    volume_led_test();

    volume_adc_setup();

}

void loop()
{
    static uint8_t source_select = 0;

    source_button.value = !digitalRead(source_button.gpio);
    Serial.println(source_button.value);
    if (source_button.value)
    {
        source_led_off(source_select);
        source_select++;
        if (source_select >= SOURCE_NUM)
        {
            source_select = 0;
        }
        source_led_on(source_select);
        delay(200);
    }

    // Read volume potentiometer
    vol_dB = read_volume_adc();

    // Set leds to match
    volume_led_set(vol_dB);

    // int16_t val = hallRead();
    // Serial.println(val);
}

int8_t read_volume_adc()
{
    static int8_t previous_local_vol_dB = g_vol_min_dB;
    static int8_t previous_remote_vol_dB = g_vol_min_dB;

    // TODO: This value to come from mqtt server.
    int8_t remote_vol_dB = g_vol_min_dB;

    uint16_t val = analogRead(volume_adc.gpio);
    uint16_t inverted = (1<<volume_adc.resolution) - 1 - val;
    int8_t local_vol_dB = ((inverted * g_vol_min_dB) >> volume_adc.resolution);


    // Check for values changing to decide whether local or remote control should be used.
    if (local_vol_dB != previous_local_vol_dB)
    {
        vol_dB = local_vol_dB;
    }
    else if (remote_vol_dB != previous_remote_vol_dB)
    {
        vol_dB = remote_vol_dB;
    }
    else
    {
        vol_dB = g_vol_min_dB;
    }

    return vol_dB;

    // // DEBUG info:
    // Serial.print("Computed Val, Vol: ");
    // char line[80];
    // sprintf(line, "%d, %d", val, vol_dB);
    // Serial.println(line);
}

void volume_adc_setup()
{
    // ADC Reference voltage is 1.1 V +/-10%;
    // There may be a way to calibrate this...


    // // set the sample bits and resolution. It can be a value between 9 (0 – 511) and 12
    // // bits (0 – 4095). Default is 12-bit resolution.
    analogReadResolution(volume_adc.resolution);

    // // set the sample bits and resolution. It can be a value between 9 (0 – 511) and 12 bits (0 –
    // // 4095). Default is 12-bit resolution.
    // analogSetWidth(width);

    // // set the number of cycles per sample. Default is 8. Range: 1 to 255.
    // analogSetCycles(255);

    // // set the number of samples in the range. Default is 1 sample. It has an effect of
    // // increasing sensitivity.
    // analogSetSamples(1);

    // // set the divider for the ADC clock. Default is 1. Range: 1 to 255.
    // analogSetClockDiv(attenuation);

    // // sets the input attenuation for all ADC pins. Default is ADC_11db.
    // // Accepted values:
    // // ADC_11db: sets no attenuation (1V input = ADC reading of 1088).
    // // ADC_6db: sets an attenuation of 1.34 (1V input = ADC reading of 2086).
    // // ADC_2_5db: sets an attenuation of 1.5 (1V input = ADC reading of 2975).
    // // ADC_0db: sets an attenuation of 3.6 (1V input = ADC reading of 3959).
    // analogSetAttenuation(ADC_11db);

    // // sets the input attenuation for the specified pin. The default is
    // // ADC_11db. Attenuation values are the same from previous function.
    // analogSetPinAttenuation(pin, attenuation);

    // // Attach a pin to ADC (also clears any other analog mode that could be on). Returns TRUE or FALSE
    // // result.
    // adcAttachPin(pin);

    // // starts an ADC convertion on attached pin’s bus. Check if
    // // conversion on the pin’s ADC bus is currently running (returns TRUE or FALSE). Get the result of the conversion:
    // // returns 16-bit integer.
    // adcStart(pin);
    // adcBusy(pin);
    // resultadcEnd(pin);
}

uint16_t led_brightness_percent_to_value(uint8_t led_brightness_percent)
{
    uint16_t brightness;
    brightness = (led_brightness_percent << g_led_resolution_bits) / 100;
    // Serial.print("Computed brightness value: ");
    // Serial.println(brightness);
    return brightness;
}

void source_led_test()
{
    for (int jj=0; jj < SOURCE_NUM; jj++)
    {
        Serial.print("Turning on input ");
        Serial.println(jj);
        source_led_on(jj);
        delay(250);
        Serial.print("Turning off input ");
        Serial.println(jj);
        source_led_off(jj);
    }
}

void source_led_setup()
{
    for (int kk=0; kk < SOURCE_NUM; kk++)
    {
        ledcAttachPin(source_leds.gpios[kk],
                      source_leds.channels[kk]);

        ledcSetup(source_leds.channels[kk],
                  g_led_pwm_freq,
                  g_led_resolution_bits);
    }
    source_led_on(0);
}

void source_led_on(uint8_t input_num)
{
    // Function to control the input leds.
    // Separate function so that fade-ins/outs or
    // other details can be easily added later
    ledcWrite(source_leds.channels[input_num],
              led_brightness_percent_to_value(g_led_max_brightness_percent));
}

void source_led_off(uint8_t input_num)
{
    // turn input leds off. Should fade out in future.
    ledcWrite(source_leds.channels[input_num], 0);
}


void volume_led_setup()
{
    for (int kk=0; kk < VOLUME_LED_NUM; kk++)
    {
        ledcAttachPin(volume_leds.gpios[kk],
                      volume_leds.channels[kk]);

        ledcSetup(volume_leds.channels[kk],
                  g_led_pwm_freq,
                  g_led_resolution_bits);
    }
}

void volume_led_test()
{
    for (int volume = g_vol_min_dB; volume <= 0; volume++)
    {
        volume_led_set(volume);
        delay(10);
    }
    delay(500);
    volume_led_set(g_vol_min_dB);
}

void volume_led_set(int8_t vol_dB)
{
    // This function computes and sets the brightness of the volume indicating leds.
    // There is a lot of opportunity for optimization and UI Tweaking here.

    // vol_dB is a negative value from 0 to g_vol_min_dB
    uint8_t scale = -1 * g_vol_min_dB;

    // find maximum broghtness value:
    uint32_t max_brightness = led_brightness_percent_to_value(g_led_max_brightness_percent);

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
        else if (steps > 0)
        {
            vol[qq] = steps >> overscale;
            steps = 0;
        }
        else
        {
            vol[qq] = 0;
        }
    }
    for (int qq = 0; qq < VOLUME_LED_NUM; qq++)
    {
        // Serial.print("Computed Brightness: ");
        // Serial.println(vol[qq]);
        // delay(1);
        ledcWrite(volume_leds.channels[qq], vol[qq]);
    }
    // DEBUG INFO
    // char values[80];
    // Serial.print("scale, full_scale, step, remainder: ");
    // sprintf(values, "%d, %d, %d", scale, full_scale, remainder);
    // Serial.println(values);
}

