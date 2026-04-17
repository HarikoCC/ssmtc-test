#include <stdio.h>

#define MATRIX_SIZE 80 /* 80*80*4B = 25.6KB, fits L1D */
#define ITERATIONS 2000000L /* Adjust to match runtime */

int main(void) {
    long i, j, k;
    int a[MATRIX_SIZE][MATRIX_SIZE];
    int temp;

    /* Initialize small matrix (fits L1D) */
    for (i = 0; i < MATRIX_SIZE; i++) {
        for (j = 0; j < MATRIX_SIZE; j++) {
            a[i][j] = (int)(i * MATRIX_SIZE + j);
        }
    }

    /* Perfect sequential access, high time locality (revisit matrix) */
    for (k = 0; k < ITERATIONS; k++) {
        for (i = 0; i < MATRIX_SIZE; i++) {
            for (j = i + 1; j < MATRIX_SIZE; j++) {
                temp = a[i][j];
                a[i][j] = a[j][i];
                a[j][i] = temp;
            }
        }
    }

    /* Prevent compiler optimization */
    printf("Final matrix center: %d\n", a[MATRIX_SIZE/2][MATRIX_SIZE/2]);
    return 0;
}
