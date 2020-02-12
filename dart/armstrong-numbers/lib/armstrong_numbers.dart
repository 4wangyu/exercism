import 'dart:math';

class ArmstrongNumbers {
  // Put your code here

  bool isArmstrongNumber(int number) {
    final int len = number.toString().length;

    return number ==
        number
            .toString()
            .split('')
            .map((c) => pow(int.parse(c), len))
            .fold<num>(0, (prev, curr) => prev + curr);
  }
}
