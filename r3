#include <stdio.h>
#include <math.h>

#define ACCURACY 0.000001

float calculate_sin(float x)
{
    float term = x; 
    float sum = term;
    int n = 1;

    while (fabsf(term / sum) > ACCURACY) 
    {
        term = -term * x * x / ((2 * n) * (2 * n + 1));
        sum += term;
        n++;
    }
    return sum;
}
int main() 
{
    float x;
    printf("Enter x in radians: ");
    scanf("%f", &x);
    printf("Calculated sin(%.2f) = %.6f\n", x, calculate_sin(x));
    printf("Library    sin(%.2f) = %.6f\n", x, sinf(x));
    return 0;
}

//cos x
#include <stdio.h>
#include <math.h>

#define ACCURACY 0.000001

float calculate_cos(float x) 
{
    float term = 1.0; 
    float sum = term;
    int n = 1;

    while (fabsf(term / sum) > ACCURACY) 
    {
        term = -term * x * x / ((2 * n - 1) * (2 * n));
        sum += term;
        n++;
    }
    return sum;
}

int main()
{
    float x;
    printf("Enter x in radians: ");
    scanf("%f", &x);
    printf("Calculated cos(%.2f) = %.6f\n", x, calculate_cos(x));
    return 0;
}

//special sum

#include <stdio.h>
#include <math.h>

#define ACCURACY 0.000001

float calculate_custom_sum()
{
    float sum = 0.0;
    float term;
    int n = 1;

    do 
    { 
        term = powf((1.0f / (float)n), (float)n);
        sum += term;
        n++;
    } 
    while (term / sum > ACCURACY);

    return sum;
}
int main()
{
    printf("Calculated SUM = %f\n", calculate_custom_sum());
    return 0;
}
