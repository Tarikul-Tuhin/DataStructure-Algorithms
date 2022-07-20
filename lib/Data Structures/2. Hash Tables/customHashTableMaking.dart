class MyHashtable {
  List data;
  int length;
  MyHashtable({required this.length})
      : data = List.generate(length, (int index) => length);

  hash(key) {
    // generating a hash number between 0 to 49 based on charachters. If we take 'ac' as the key and 100 as the value, it will first generate a unique hash number for 'ac' which is 49. Then it will save the key and value to the 49th index of the List Data.
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnitAt(i) * i).toInt() %
          data.length; // codeUnitAt provides ascii value of each character
    }
    print('hash number of $key is $hash');
    return hash;
  }

  set(key, value) {
    final address = hash(key);
    if (data[address] == length) {
      // here length is the number which is given by the user while calling the class constructor. So, if a user gives 2 as the length, it will generate a list with 2 element. and the value of each element will be 2. So, in this if condition we are checking whether in the address value, is there  2 exist in the address's index? if yes, it will enter into the condition, and replace the address index from 2 to an empty list. then, we will add our [key,value] list inside the empty list. Note: if there is less space on the memory, input may arise to 2. So, the [key,value] might get replaced with a new [key, value] into that particular address. That's why we are creating an empty list. Suppose, there are 2 elements on the List, and user wants to add 2 elements into the list, and the address or hash value of those two elements become 1. So, first time it will check the condition whether length 2 is available in the list? It will find yes, it will go inside. then when a user again insert another value and the hash code also become 1 like the 1st time insertion by the user, it now won't go inside the condition as there is no '2' right now. so, It will add second [key, value] inside that empty array after the first [key, value]. i.e. [[key1, value1],[key2, value2]]
      data[address] = [];
    }
    data[address].add([key, value]);
    print(data);
  }

  get(key) {
    final address = hash(key);
    var currentBucket = data[address];
    if (currentBucket.isNotEmpty) {
      for (int i = 0; i < currentBucket.length; i++) {
        // if multiple elements [2, [key1, value1], [key2, value2]] stay inside the same hash address. for example: data[1] has two elements as they has the same hash number. so it will loop the index 1 and search for the 'key' given by the user.
        if (currentBucket[i][0] == key) {
          print('the value of $key is: ${currentBucket[i][1]}');
          return currentBucket[i][1];
        } else {
          print('wrong key');
          return 'wrong key';
        }
      }
    }
  }
}

/*

Output: 

hash number of ac is 49
[50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, [[ac, 100]]]
hash number of xx is 20
[50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, [[xx, 20]], 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, [[ac, 100]]]
hash number of ac is 49
the value of ac is: 100



*/
