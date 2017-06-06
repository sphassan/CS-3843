#include <stdio.h>

int main()
{
	printf("%d\n", decode2(10, 5, 3));
	
	return 0;
}

int decode2(int x, int y, int z)
{
	return(((y-z) << 1) >> 1) ^ (x * (y-z));
}
