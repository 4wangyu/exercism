class WordCount {
  Map<String, int> countWords(String s) {
    var m = new Map<String, int>();
    s
        .replaceAll(new RegExp('[^a-zA-Z0-9\']+'), ' ')
        .trim()
        .split(' ')
        .forEach((word) {
      if (word != '\'') {
        String cw = word.replaceAll(new RegExp('^\'+|\'+\$'), '').toLowerCase();
        int c = m[cw] ?? 0;
        m[cw] = c + 1;
      }
    });
    return m;
  }
}
