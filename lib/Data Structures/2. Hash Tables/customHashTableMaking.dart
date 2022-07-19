class MyHashtable {
  List data;
  int length;
  MyHashtable({required this.length})
      : data = List<int>.generate(length, (int index) => length);

  hash(key) {
    num hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnitAt(i) * i) % data.length;
    }
    print(hash);
    return hash;
  }
}
