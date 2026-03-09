#include <stdio.h>
#include <math.h> 
#define PI 3.14
float Diameter(float, float, float, float);
float Area(float);
float Perimeter(float);

int main()
{
    int x1, y1, x2, y2; 
    float diameter, area, perimeter;

    printf("Enter coordinates of point 1 (x1 y1): ");
    scanf("%d %d", &x1, &y1);
    printf("Enter coordinates of point 2 (x2 y2): ");
    scanf("%d %d", &x2, &y2);
    diameter = Diameter((float)x1, (float)y1, (float)x2, (float)y2);
    area = Area(diameter);
    perimeter = Perimeter(diameter);

    printf("\n Circle Properties");
    printf("\nDiameter: %f", diameter);
    printf("\nArea: %f", area);
    printf("\nPerimeter: %f\n", perimeter);
    return 0;
}

float Diameter(float x1, float y1, float x2, float y2) 
{
    return sqrtf((x2 - x1)*2+ (y2 - y1)*2);
}

float Area(float diameter) 
{
    float radius = diameter / 2.0f;
    return PI * (radius*2);
}

float Perimeter(float diameter) 
{
    return PI * diameter;
}
