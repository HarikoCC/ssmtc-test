#include <stdio.h>


#define L1_CACHE_ARRAY_SIZE  5120
#define BENCHMARK_ITERATIONS 2000000L

int main(void)
{
    long iteration_cnt;
    long array_index;

    int l1_test_array[L1_CACHE_ARRAY_SIZE];

    long long total_sum = 0;

    for (array_index = 0; array_index < L1_CACHE_ARRAY_SIZE; array_index++)
    {
        l1_test_array[array_index] = (int)(array_index % 100);
    }

    for (iteration_cnt = 0; iteration_cnt < BENCHMARK_ITERATIONS; iteration_cnt++)
    {
        for (array_index = 0; array_index < L1_CACHE_ARRAY_SIZE; array_index++)
        {
            total_sum += l1_test_array[array_index];
        }
    }

    printf("Sequential sum: %lld\n", total_sum);
    return 0;
}
