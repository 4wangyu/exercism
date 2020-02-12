import 'dart:math';

class ArmstrongNumbers {
  // Put your code here

  bool isArmstrongNumber(int num) {
    return num ==
        num.toString()
            .split('')
            .map((c) => int.parse(c))
            .fold(0, (prev, curr) => pow(curr, num.toString().length) + prev);
  }
}
