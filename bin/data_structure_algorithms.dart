import 'package:data_structure_algorithms/creating_custom_array_data_structures.dart';

void main() {
  CustomArray newCustom = CustomArray();
  newCustom.push('you');
  newCustom.push('are');
  newCustom.push('!');
  newCustom.push('nice');
  newCustom.deleteIndexWise(2); // Deleted index 2 which is !

  print(newCustom.getIndexWiseValue(1)); // index 1 is are
  print(newCustom.getListAndLength()); // {3, {0: you, 1: are, 2: nice}}

  newCustom.pop(); // will pop the last item. which is nice.

  newCustom.push('great'); // will push new item. which is great

  print(newCustom.getListAndLength()); // {3, {0: you, 1: are, 2: great}}
}
