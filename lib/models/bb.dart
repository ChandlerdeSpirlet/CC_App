class BlackBelt {
  int barcode;
  String name;
  int regular;
  int sparring;
  int swats;

  BlackBelt.fromJson(Map<String, dynamic> jsonMap):
    barcode = jsonMap['barcode'],
    name = jsonMap['bbname'],
    regular = jsonMap['regular'],
    sparring = jsonMap['sparring'],
    swats = jsonMap['swats'];
}