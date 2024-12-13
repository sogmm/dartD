//enum: 광범위한 String 같은 타입을 사용하면 오타같은 실수가 발생할수 있다. 알맞게 enum 을 사용하자.
import 'abstr.dart';

enum Side { SideA, SideB }

class Player extends Human {
  String name;
  int age, exp;
  String team;
  Side side;

  //Default Constructor
  Player({
    required this.name,
    required this.age,
    required this.exp,
    this.team = 'No Team',
    this.side = Side.SideA,
  });

  //Named Constructor
  Player.redTeam({
    required this.name,
    required this.age,
  })  : this.exp = 0,
        this.team = 'Red',
        this.side = Side.SideA;

  //Contructor for Creating Objects from JSON
  Player.fromJSON(Map<String, dynamic> person)
      : name = person['name'],
        age = person['age'],
        exp = person['exp'],
        team = person['team'],
        side = person['side'];

  void greet() {
    print('name: $name, age: $age, exp: $exp, team: $team, side: ${side.name}');
  }

  void walk() {
    print('I am Walking');
  }
}

void main() {
  Player Ye = Player.redTeam(name: 'Ye', age: 23);

  //Cascade Notation
  Player Anon = Player(name: 'Anon', age: 33, exp: 33, team: 'Green')
    ..greet()
    ..age = 44
    ..greet();

  Ye
    ..greet()
    ..age = 55
    ..greet();

  var APIdata = [
    {
      'name': 'Jack',
      'age': 24,
      'exp': 4,
      'team': 'Blue',
      'side': Side.SideA,
    },
    {
      'name': 'Jane',
      'age': 23,
      'exp': 4,
      'team': 'Blue',
      'side': Side.SideA,
    },
    {
      'name': 'Joy',
      'age': 22,
      'exp': 4,
      'team': 'Blue',
      'side': Side.SideA,
    },
    {
      'name': 'June',
      'age': 21,
      'exp': 4,
      'team': 'Blue',
      'side': Side.SideA,
    }
  ];

  APIdata.forEach((person) {
    var p = Player.fromJSON(person);
    p.greet();
  });
}
