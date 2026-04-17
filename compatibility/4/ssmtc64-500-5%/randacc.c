/* bm04_tuned_target.c */
#define ARRAY_SIZE 49152
#define ITERATIONS 20000
#define HOT_ZONE_SIZE 28672

static volatile unsigned char buffer[ARRAY_SIZE];
static volatile unsigned long sink = 0;

int main(void) {
    unsigned long i;
    unsigned long j;
    unsigned long sum = 0;
    unsigned long state = 1;
    unsigned long index;

    for (i = 0; i < ITERATIONS; i++) {
        for (j = 0; j < ARRAY_SIZE; j++) {
            state = state * 1103515245UL + 12345UL;
            
            if ((state & 0x1FUL) != 1UL) {
                index = (state >> 16) % HOT_ZONE_SIZE;
            } else {
                index = (state >> 16) % ARRAY_SIZE;
            }
            
            sum += buffer[index];
        }
    }

    sink = sum;
    return 0;
}
