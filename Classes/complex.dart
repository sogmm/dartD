class Human1 {
  final String name;
  Human1(this.name);
  void greet() {
    print("Hi my name is $name");
  }
}

enum Team { red, blue }

//mixin class: class without constructors.
mixin Strong {
  double Strength = 500;
  void breakTheWall() {
    print("I break the wall with power $Strength");
  }
}

//inherited class with super constructor and overrided method.
// and also with a mixin class.
class Player1 extends Human1 with Strong {
  Team team;
  Player1({required this.team, required String name}) : super(name);

  @override
  void greet() {
    super.greet();
    print("and my team is ${team.name}");

    //methods and attributes of mixined class accessable
    breakTheWall();
    Strength = 4500;
    print("I am now Stronger: $Strength");
  }
}

void main() {
  Player1 p1 = Player1(team: Team.red, name: "Jack");
  p1.greet();
}
