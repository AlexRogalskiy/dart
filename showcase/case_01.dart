int fib(int n) {
    return (n <= 2) ? 1 : (fib(n - 1) + fib(n - 2));
}

main() {
    print('fib(20) = ${fib(20)}');
}