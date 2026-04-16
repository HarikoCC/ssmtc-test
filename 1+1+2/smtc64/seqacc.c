/* bm04_seq_mix.c */
#include <stdio.h>

#define ARRAY_SIZE 5120
#define ITERATIONS 2000000L
#define BLOCK_SIZE 1024
#define MIX_RATIO 3

int main(void) {
    long i, j;
    int arr[ARRAY_SIZE];
    long long sum;
    unsigned long state;
    int block_idx, offset;

    for (i = 0; i < ARRAY_SIZE; i++) {
        arr[i] = (int)(i % 100);
    }

    sum = 0;
    state = 1;
    for (i = 0; i < ITERATIONS; i++) {
        for (j = 0; j < ARRAY_SIZE; j++) {
            state = state * 1103515245UL + 12345UL;
            if ((state & 0x3UL) < MIX_RATIO) {
                block_idx = ((state >> 16) % (ARRAY_SIZE / BLOCK_SIZE)) * BLOCK_SIZE;
                offset = (state >> 22) % BLOCK_SIZE;
                sum += arr[block_idx + offset];
            } else {
                sum += arr[j];
            }
        }
    }

    printf("Sequential sum: %lld\n", sum);
    return 0;
}

