//in this class we have showed how to create custom array on our own. we can build any data structure on our own like this. Time complexity attached with every method in this data structure.

class CustomArray {
  int length = 0;
  var data = {};

  getIndexWiseValue(index) {
    // Big O(1)
    return 'index $index is ${data[index]}';
  }

  getListAndLength() {
    // Big O(1)
    return {length, data};
  }

  push(item) {
    // Big O(1)
    data[length] = item;
    length++;
    return length;
  }

  pop() {
    // Big O(1)
    final deletedItem = data[length - 1];
    data.remove(length -
        1); // it will remove by key of the Last index. if length-1 is 1, it will search the key which is 1, and if it finds, then it will remove it from the object
    length--;
    return 'Deleted Item is $deletedItem';
  }

  deleteIndexWise(index) {
    // Big O(n)
    final item = data[index];
    // data.remove(index);
    // length--;
    for (int i = index; i < length - 1; i++) {
      // suppose [a,b,c] our length is 3.  {3, {0: a, 1: b, 2: c}} . so, let's say we wanna delete 1 index value. i=index=1, 1<length-1=3-2=2, i++=2, now 2<2, will out from the loop. so it result will be {3, {0: a, 1: c, 2: c}}. So, last one will stay on it's place always. we have to delete it. and we need to decrease the length as well.
      data[i] = data[i + 1];

      //index=i=1 if we want to delete index 1, data[1] = data[2]. so, index 1's value 'b' will be shifted/replaced by index 2's value 'c'. {3, {0: a, 1: c, 2: c}}
    }
    pop();
    print('Deleted index $index which is $item');

    return 'Deleted index $index which is $item';
  }

  insertItemIndexWise(index, item) {
    // Big O(n)
    for (int i = length - 1; i >= index; i--) {
      //length-1 because we want to shift last indexNUmber(2)  3-1 = 2 to right shift by 1, which is replace the value of index 2 values to index 3.
      data[i + 1] =
          data[i]; //shifting to the right till required index given by user
    }
    length++;
    data[index] = item;
  }
}


/*
Array  ==> push - O(1)
           pop - O(1)
           insert - O(n)  ==> because, we need to shift each index after the inserting index
           delete - O(n)  ==> because, we need to shift each index after the deleting index
*/