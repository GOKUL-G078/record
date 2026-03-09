#include <stdio.h>
#include <math.h> 
#define PI 3.14
float calculateDiameter(float x1, float y1, float x2, float y2);
float calculateArea(float diameter);
float calculatePerimeter(float diameter);

int main()
{
    int x1, y1, x2, y2; 
    float diameter, area, perimeter;

    printf("Enter coordinates of point 1 (x1 y1): ");
    scanf("%d %d", &x1, &y1);
    printf("Enter coordinates of point 2 (x2 y2): ");
    scanf("%d %d", &x2, &y2);
    diameter = calculateDiameter((float)x1, (float)y1, (float)x2, (float)y2);
    area = calculateArea(diameter);
    perimeter = calculatePerimeter(diameter);

    printf("\n Circle Properties");
    printf("\nDiameter: %f", diameter);
    printf("\nArea: %f", area);
    printf("\nPerimeter: %f\n", perimeter);
    return 0;
}

float calculateDiameter(float x1, float y1, float x2, float y2) 
{
    return sqrtf(powf(x2 - x1, 2) + powf(y2 - y1, 2));
}

float calculateArea(float diameter) 
{
    float radius = diameter / 2.0f;
    return PI * powf(radius, 2);
}

float calculatePerimeter(float diameter) 
{
    return PI * diameter;
}
a;gprithm
