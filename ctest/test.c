#include <stdio.h>
#include <libgotest.h>

int main(void) {
    unsigned ret = TestGo();
    printf("%.4x\n", ret);

    return 0;
}
