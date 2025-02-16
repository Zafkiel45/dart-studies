void main() {
  // function is pratically the same than another languages, but here, the 
  // "function" keywork is not necessary. 
  // It's possible to use arrow function too.
  int fibonacci(int n) {

    if(n == 0 || n == 1) {
      return n;
    }

    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  print(fibonacci(20));
}