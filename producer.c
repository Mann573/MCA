#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define SHARED_MEM_SIZE 1024  // Size of the shared memory region
#define MESSAGE_SIZE 256       // Size of each message

typedef struct {
    int is_ready;
    char message[MESSAGE_SIZE];
} shared_data_t;

int main() {
    int shm_fd;
    shared_data_t *shm_ptr;
    const char *shm_name = "/my_shared_memory"; // Name of the shared memory object

    // Create the shared memory object (or open if it already exists)
    shm_fd = shm_open(shm_name, O_CREAT | O_RDWR, 0666);
    if (shm_fd == -1) {
        perror("shm_open");
        exit(EXIT_FAILURE);
    }

    // Configure the size of the shared memory object
    if (ftruncate(shm_fd, SHARED_MEM_SIZE) == -1) {
        perror("ftruncate");
        exit(EXIT_FAILURE);
    }

    // Map the shared memory object into the address space
    shm_ptr = mmap(0, SHARED_MEM_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, shm_fd, 0);
    if (shm_ptr == MAP_FAILED) {
        perror("mmap");
        exit(EXIT_FAILURE);
    }

    // Producer process writes messages to shared memory
    int counter = 0;
    while (counter < 10) {
        sprintf(shm_ptr->message, "Message %d", counter);
        shm_ptr->is_ready = 1; // Set flag
        counter++;
        sleep(1); // Sleep for 1 second
    }

    // Unmap the shared memory object
    if (munmap(shm_ptr, SHARED_MEM_SIZE) == -1) {
        perror("munmap");
        exit(EXIT_FAILURE);
    }

    // Close the shared memory object
    if (close(shm_fd) == -1) {
        perror("close");
        exit(EXIT_FAILURE);
    }

    return 0;
}

