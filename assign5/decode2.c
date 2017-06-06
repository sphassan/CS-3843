#include <stdio.h>

int main()
{
	printf("%d\n", decode2(10, 5, 3));
	
	int s1 = 5 - 3;
	int s2 = s1 << 1;
	int s3 = s2 >> 1;
	int s4 = 10 * (5 - 3);
	int s5 = s3 ^ s4;
	
	printf("%d\n",s5);
	
	printf("%d\n",(((5 - 3) << 1) >> 1));
	printf("%d\n",(10 * (5 - 3)));
	printf("%d\n",2 ^ 20);
	
	return 0;
}

int decode2(int x, int y, int z)
{
	y = y - z;
	printf("%d\n",y);
	x = x * y;
	printf("%d\n",x);
	y = y << 1;
	printf("%d\n",y);
	y = y >> 1;
	printf("%d\n",y);
	x = x ^ y;
	printf("%d\n",x);
	return(x);
}
