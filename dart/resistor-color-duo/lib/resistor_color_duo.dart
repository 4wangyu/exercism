class ResistorColorDuo {
  var map = {
    'Black': 0,
    'Brown': 1,
    'Red': 2,
    'Orange': 3,
    'Yellow': 4,
    'Green': 5,
    'Blue': 6,
    'Violet': 7,
    'Grey': 8,
    'White': 9
  };

  int value(List<String> list) {
    return int.parse(list.sublist(0, 2).map((color) => map[color]).join(""));
  }
}
