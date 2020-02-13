class Isogram {
  // Put your code here

  bool isIsogram(String s) {
    var arr = s
        .split("")
        .where((c) => ![" ", "-"].contains(c))
        .map((c) => c.toLowerCase());
    return Set<String>.from(arr).length == arr.length;
  }
}
