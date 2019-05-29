#include <stdlib.h>
#include <stdio.h>

int main(void) {
	printf("Hello world!!!\n");
}

void _start() {
  int ret = main();
  exit(ret);
}

