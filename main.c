#include<math.h>
#include<stdlib.h>
#include<stdio.h>

extern void foo(void);

int main(){
	int i = sqrt(25);
	printf("Hello %d\n", i);
	foo();

	return 0;
}
