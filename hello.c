#include <stdio.h>

int main(){
#ifdef HELLO
	printf("hello");
#endif
	printf(",world!!");

	return 0;
}
