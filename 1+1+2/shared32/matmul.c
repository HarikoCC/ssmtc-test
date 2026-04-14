#define MAT_SIZE 64
#define ACCESS_COUNT 100000000

int main() {
    static int a[MAT_SIZE][MAT_SIZE];
    static int b[MAT_SIZE][MAT_SIZE];
    static int c[MAT_SIZE][MAT_SIZE];
    int i, j, k, iter, sum = 0;

    for (i = 0; i < MAT_SIZE; i++) {
        for (j = 0; j < MAT_SIZE; j++) {
            a[i][j] = i + j;
            b[i][j] = i - j;
            c[i][j] = 0;
        }
    }

    iter = 0;
    while (iter < ACCESS_COUNT / (MAT_SIZE * MAT_SIZE * MAT_SIZE) + 1) {
        for (i = 0; i < MAT_SIZE; i++) {
            for (j = 0; j < MAT_SIZE; j++) {
                for (k = 0; k < MAT_SIZE; k++) {
                    c[i][j] += a[i][k] * b[k][j];
                }
                sum += c[i][j];
            }
        }
        iter++;
    }

    return 0;
}
