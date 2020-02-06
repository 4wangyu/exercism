class ResistorColorDuo {
  var map = {
    'black': '0',
    'brown': '1',
    'red': '2',
    'orange': '3',
    'yellow': '4',
    'green': '5',
    'blue': '6',
    'violet': '7',
    'grey': '8',
    'white': '9'
  };

  int value(List<String> list) {
    return int.parse(list.sublist(0, 2).map((color) => map[color]).join(""));
  }
}
