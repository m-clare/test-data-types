#!/bin/bash

# Get platform from environment variable
platform=$1

# Function to print header
print_header() {
    echo "Platform | unsigned int | unsigned long"
    echo "---------------------------------------"
}

# Function to test sizes
test_sizes() {
    echo -n "$platform | "
    # Compile C program to check sizes
    echo -n "$(gcc -o size_test test.c && ./size_test)"
    echo ""
    # Remove compiled program
    rm -f size_test
}

# Main function
main() {
    print_header
    test_sizes "$platform"
}

# Execute main function
main
