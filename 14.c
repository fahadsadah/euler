#include <stdio.h>

void main() {
	int maxterms = 1;
	int maxstarter = 1;
	int original;
	for (original = 1; original<=1000000; original++) {
		unsigned int x = original;
		int terms = 1;
		while (x != 1) {
			if (x % 2 == 0) {
				//x is even
				x = x/2;
			}
			else {
				//x is odd
				x = (3 * x) + 1;
			}
			terms = terms + 1;
		}
		if (terms > maxterms) {
			maxstarter = original;
			maxterms = terms;
		}
		printf("%d gives %d terms\n", original, terms);
	}
	printf("%d gives %d terms\n", maxstarter, maxterms);
}
