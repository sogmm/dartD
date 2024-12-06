void main() {
  bool putsixx = true;
  var list = [
    1,
    2,
    3,
    4,
    5,
    if (putsixx) 6,
  ];

  var doubled = [
    for (var number in list) number * 2.5,
  ];

  print(list);
  print(doubled);
}
