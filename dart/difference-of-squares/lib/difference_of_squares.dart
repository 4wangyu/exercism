import 'dart:math';

class DifferenceOfSquares {
  // Put your code here
  int differenceOfSquares(int n) {
    var tmp = (n * (n + 1) / 2).toInt();
    var list = [for (var i = 1; i <= n; i += 1) i];
    return list.fold(0, (prev, curr) => prev + curr * (tmp - curr));
  }

  int squareOfSum(int n) {
    return pow((n * (n + 1) / 2), 2).toInt();
  }

  int sumOfSquares(int n) {
    var list = [for (var i = 1; i <= n; i += 1) i];
    return list.fold<num>(0, (prev, curr) => prev + pow(curr, 2)).toInt();
  }
}
