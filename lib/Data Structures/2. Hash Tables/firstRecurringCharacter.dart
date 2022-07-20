class FirstRecurringCharacter {
  getFirstRecurringCharacter(List list) {
    var map = {};
    print('The List is $list');

    for (int i = 0; i < list.length; i++) {
      // step1 => This example, [1, 2, 2, 1, 5, 6] map[List[i]] => map[List[0]] => map[1] != true. it will go to else, add map[1] = true. So the output now is {1:true}.
      // step2 => map[List[i]] => map[List[1]] => map[2] != true. it will go to else, add map[2] = true.
      // step3 => map[List[i]] => map[List[2]] => map[2] == true. it will return 2 and go out from the loop.
      if (map[list[i]] == true) {
        // check each element whether any key's value inside the map has got the true value or not. if will find true value associated with the key, it will return the key.
        print('the first recurring character is ${list[i]}');
        return list[
            i]; // return will go out from the loop if it finds any recurring character
      } else {
        map[list[i]] = true; // adding value 'true to the each key.
        print(map);
      }
    }
  } // Big O(n)
}

/* 

Output: 

The List is [1, 2, 2, 1, 5, 6]
{1: true}
{1: true, 2: true}
the first recurring character is 2

*/
