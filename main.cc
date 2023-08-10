#include <iostream>

#include "test_lib.h"

int main(int argc, char** argv) {
    int a = 42;
    int b = 23;
    int result = add(a,b);

    std::cout << "42 + 23 = " << result << std::endl;
}
