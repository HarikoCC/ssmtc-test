#define ARRAY_SIZE 65536
#define RECUR_DEPTH 1000
#define TOTAL_ACCESSES 100000000

static int array[ARRAY_SIZE];
static int sum = 0;
static int current_idx = 0;

void recursive_access(int depth) {
    if (depth > 0) {
        sum += array[current_idx];
        current_idx++;
        if (current_idx >= ARRAY_SIZE) current_idx = 0;
        recursive_access(depth - 1);
    }
}

int main() {
    int i;

    for (i = 0; i < ARRAY_SIZE; i++) {
        array[i] = i;
    }

    for (i = 0; i < TOTAL_ACCESSES / RECUR_DEPTH; i++) {
        recursive_access(RECUR_DEPTH);
    }

    return 0;
}
