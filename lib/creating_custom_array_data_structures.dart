//in this class we have showed how to create custom array on our own. we can build any data structure on our own like this.

class CustomArray {
  int length = 0;
  var data = {};

  getIndexWiseValue(index) {
    return 'index $index is ${data[index]}';
  }

  getListAndLength() {
    return {length, data};
  }

  push(item) {
    data[length] = item;
    length++;
    return length;
  }

  pop() {
    final deletedItem = data[length - 1];
    data.remove(length -
        1); // it will remove by key of the Last index. if length-1 is 1, it will search the key which is 1, and if it finds, then it will remove it from the object
    length--;
    return 'Deleted Item is $deletedItem';
  }

  deleteIndexWise(index) {
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
}
