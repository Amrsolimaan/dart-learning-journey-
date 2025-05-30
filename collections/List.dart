import 'dart:io';
import 'dart:math';

void main() {
  // List.where()
  // program 1
  List<String> names = ["Amr", "Malak", "Yousef", "John"];
  Iterable<String> avalible1 = names.where((name) {
    return name.toLowerCase().contains("a");
  });
  // program 2

  List<int> Numbers = [158, 242, 487, 154, 254, 230];
  Iterable<int> avalible2 = Numbers.where((num) => num.isOdd);
  print(avalible2);

  // program 3

  List<Friends> friend = [
    Friends(Name: "Ahmed maged", Country: "Fayoum"),
    Friends(Name: "Amr soliman", Country: "Cairo", Age: 23),
    Friends(Name: "Ahmed maged", Country: "Alex"),
    Friends(Name: "Ahmed maged", Country: "Banha"),
    Friends(Name: "Zain soliman", Country: "Borsaed"),
  ];
  Iterable<Friends> avalible3 = friend.where(
    (myfriend) => myfriend.Country?.contains("Egypt") == true,
  );

  print(
    avalible3
        .map((f) => " ${f.Name} is ${f.Age ?? null} years old ")
        .join("\n"),
  );

  // *************************************

  // forEach() && Fold() & sort() && reduce()

  // program 1

  List<Friends> person = [
    Friends(Name: "Amr", Age: 23),
    Friends(Name: "mohab", Age: 25),
    Friends(Name: "joo", Age: 30),
    Friends(Name: "honda", Age: 15),
  ];
  person.forEach((f) => print("${f.Name} is ${f.Age} years old"));

  // program 1
  List<int> points = [54, 45, 10, 10, 11];
  int result = 0;
  points.forEach((p) => result += p);
  print("The total points is : $result");

  int total = points.fold(0, (p, point) => p + point);
  print("The total points is : $total");

  // program 2
  List<String> Names = ["Amr", "Malak", "Yousef", "John"];
  List<String> firstLaters = [];

  Names.forEach((n) => firstLaters.add(n.split('').first));
  print(firstLaters.join(" , "));

  String first = Names.fold("", (f, name) => f + name[0]);
  print(first);

  person.sort((a, b) => (a.Age ?? 0).compareTo(b.Age ?? 0));
  person.forEach((p) => print(p.Name));

  // ************************************

  //map()

  final random = Random();

  Iterable<BestFriend> bestfriend = person.map((f) {
    final otherfriend =
        person.where((x) => x.Name != f.Name).map((x) => x.Name!).toList();

    final Randomname =
        otherfriend.isNotEmpty
            ? otherfriend[random.nextInt(otherfriend.length)]
            : "No one !";

    return BestFriend(friend1: f.Name, friend2: Randomname);
  });
  bestfriend.forEach((b) => print(b.sayhello()));

  //other program

  List<Friends> MYfriend = [
    Friends(Name: "Amr", Age: 23, Country: "ALEX"),
    Friends(Name: "mohab", Age: 25, Country: "Cairo"),
    Friends(Name: "joo", Age: 30, Country: "Luxor"),
    Friends(Name: "Malak", Age: 19, Country: "ALEX"),
    Friends(Name: "Wael", Age: 15, Country: "Cairo"),
    Friends(Name: "Tamer", Age: 15, Country: "Luxor"),
    Friends(Name: "Sami", Age: 15, Country: "Alex"),
    Friends(Name: "yara", Age: 15, Country: "geza"),
  ];
  List<BestFriend> BEST =
      MYfriend.map((F) {
        var other = MYfriend.where(
          (x) =>
              x.Name != F.Name &&
              F.Country!.toLowerCase() == x.Country!.toLowerCase(),
        ).map((x) => x.Name!).join(" , ");
        return BestFriend(friend1: F.Name, friend2: other, Country: F.Country);
      }).toList();
  BEST.forEach(
    (f) =>
        f.friend2 == null || f.friend2!.trim().isEmpty
            ? print("${f.friend1} Don't have any Friends")
            : print(f.Friends_same_country()),
  );
}

class Friends {
  String? Name;
  String? Country;
  int? Age;

  Friends({this.Name, this.Country, this.Age});
}

class BestFriend {
  String? friend1;
  String? friend2;
  String? Country;
  BestFriend({this.friend1, this.friend2, this.Country});
  String sayhello() {
    return "The best friend of $friend1 is $friend2 ";
  }

  String Friends_same_country() {
    return "The best friend of $friend1 from $Country is $friend2";
  }
}
