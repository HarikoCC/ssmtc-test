#define RANDOM_ACCESS_ARRAY_SIZE  49152
#define BENCHMARK_ITERATIONS      20000

static volatile unsigned char memory_buffer[RANDOM_ACCESS_ARRAY_SIZE];
static volatile unsigned long result_sink = 0;

int main(void) {
    unsigned long outer_iter;
    unsigned long inner_index;

    unsigned long total_sum = 0;
    unsigned long prng_state = 1;

    for (outer_iter = 0; outer_iter < BENCHMARK_ITERATIONS; outer_iter++) {
        for (inner_index = 0; inner_index < RANDOM_ACCESS_ARRAY_SIZE; inner_index++) {
            prng_state = prng_state * 1103515245 + 12345;
            total_sum += memory_buffer[(prng_state >> 16) % RANDOM_ACCESS_ARRAY_SIZE];
        }
    }

    result_sink = total_sum;
    return 0;
}

