#include <stdio.h>

int calc(int x, int y, int z);

int main()
{
	int x = 2;
	int y= 6;
	int z = 11;
	
	int result = calc(x,y,z);
	
	printf("x=%d, y=%d, z=%d, result=%d\n", x, y, z, result);
	
	return 0;
}
