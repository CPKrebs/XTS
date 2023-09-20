#include <stdio.h>
#include <omp.h>

int main(int argc, char** argv){

    #pragma omp parallel for schedule(static,1) ordered
    for (int i=0; i<4; i++) {

        printf("Hello from process %d no-order: %d\n", i, omp_get_thread_num());

        #pragma omp ordered
        printf("Hello from process %d in-order: %d\n", i, omp_get_thread_num());
    }

    return 0;
}