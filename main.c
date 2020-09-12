#include <stdio.h>
#include "src/functions.h"

int main(){
	int decimalNumber = 0;
	printf("Enter a Decimal Number: ");
	scanf("%d", &decimalNumber);

	printf("\n High bits in %d are: %d",decimalNumber, getHighbits(decimalNumber));
	printf("\n Low bits in %d are: %d\n\n",decimalNumber, getLowbits(decimalNumber));

}
