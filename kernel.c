// Define a dummy function to keep the C compiler happy
void dummy_function() {}

// The main entry point of our kernel
void kmain() {
    // Call the "Hello, World!" function written in Assembly
    // This function will be called as the entry point from the Assembly code
    __asm__("call _start");
}
