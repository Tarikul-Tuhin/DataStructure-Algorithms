import 'package:data_structure_algorithms/Data Structures/1. Arrays/creating_custom_array_data_structures.dart';
import 'package:data_structure_algorithms/Data%20Structures/2.%20Hash%20Tables/customHashTableMaking.dart';
import 'package:data_structure_algorithms/Data%20Structures/2.%20Hash%20Tables/firstRecurringCharacter.dart';

void main() {
/////////////////////////Arrays////////////////////////////////////
/*  CustomArray newCustom = CustomArray();
  newCustom.push('you');
  newCustom.push('are');
  newCustom.push('!');
  newCustom.push('nice');
  newCustom.deleteIndexWise(2); // Deleted index 2 which is !
  print(newCustom.getIndexWiseValue(1)); // index 1 is are
  print(newCustom.getListAndLength()); // {3, {0: you, 1: are, 2: nice}}
  newCustom.insertItemIndexWise(1, 'tuhin');

  print(newCustom.getListAndLength()); // {3, {0: you, 1: are, 2: great}}
*/

/////////////////////////HashTables////////////////////////////////////

  // MyHashtable hashTableInstance = MyHashtable(length: 50);

  // hashTableInstance.set('ac', 100);
  // hashTableInstance.set('xx', 20);

  // hashTableInstance.get('ac');

  FirstRecurringCharacter firstRecurringInstance = FirstRecurringCharacter();
  firstRecurringInstance.getFirstRecurringCharacter([1, 2, 2, 1, 5, 6]);
}
