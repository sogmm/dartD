void main() {
  //Lists, Collection if
  bool putSix = true;
  var trivialList = [1, 2, 3, 4, 5, if (putSix) 6];
  print(trivialList);

  //String Interpolation
  var name = 'Jae';
  var age = 10;
  var greet = 'Hi my name is $name, and i am ${age + 2} years old';
  print(greet);

  //Map
  var mapp = {
    1: 'A',
    2: 'B',
    3: 'C',
    4: 'D',
  };
  print(mapp[4]); //D
  //Key 의 타입이 Object 라면 그것을 참조하는 변수나 상수로 접근해야한다. [1,2] != [1,2] 이기 때문.

  //Set
  var sett = {1, 2, 3, 4, 5, 5, 5, 5, 5, 5};
  print(sett); //{1, 2, 3, 4, 5}
  //집합이기 때문에 모든 원소들은 고유하다.
}
