import 'dart:math';

class DifferenceOfSquares {
  // Put your code here
  int differenceOfSquares(int n) {
    return squareOfSum(n) - sumOfSquares(n);
  }

  int squareOfSum(int n) {
    return pow((n * (n + 1) / 2), 2).toInt();
  }

  int sumOfSquares(int n) {
    return (n * (n + 1) * (2 * n + 1) / 6).toInt();
  }
}
