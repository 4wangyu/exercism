class WordCount {
  Map<String, int> countWords(String sentence) {
    var map = new Map<String, int>();
    RegExp(r"[\w]+['][\w]+|[\w]+").allMatches(sentence).forEach((match) {
      String word = match.group(0).toLowerCase();
      map[word] = (map[word] ?? 0) + 1;
    });
    return map;
  }
}
