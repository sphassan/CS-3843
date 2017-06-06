#include <stdio.h>

int fun(unsigned x) {
	int val = 0;
	int i;
	while (x != 0) {
		val = x^val;
		x /= 2;
	}
	
	return (val & 1);
}

int main() {
	printf("%d\n",fun(1));
	
	return 0;
}
