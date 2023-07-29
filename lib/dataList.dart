// ignore: file_names
class Coffee {
  final String? name;
  late double price;
  final String image;
  late double counter = 0; // last price
  late int point = 12;
  Coffee(
      {required this.name,
      required this.price,
      required this.image,
      required this.counter,
      required this.point});

  double calculateTotal(double size) {
    return counter * (price.toDouble() + size * 0.25);
  }
}

class Cart {
  late String time = '';
  late int? id;
  late bool isDone;
  late List<Contains> listContains = [];
  Cart({this.id, required this.isDone});

  int numCups() {
    int cups = 0;
    for (var i in listContains) {
      cups += i.drink.counter.round();
    }
    return cups;
  }

  double money() {
    double total = 0;
    for (var i in listContains) {
      total += i.drink.counter * (i.drink.price + i.size * 0.25);
    }
    return total;
  }
}

class Contains {
  late Coffee drink;
  late int shot;
  late int hotOrcold;
  late double size;
  late int ice;
  Contains(
      {required this.drink,
      required this.shot,
      required this.hotOrcold,
      required this.size,
      required this.ice});
}

List<Coffee> listDrinks = [
  Coffee(
      name: 'Americano',
      price: 3,
      image: 'images/Americano.png',
      counter: 0,
      point: 12),
  Coffee(
      name: 'Cappuccino',
      price: 4,
      image: 'images/Cappuccino.png',
      counter: 0,
      point: 12),
  Coffee(
      name: 'Mocha',
      price: 3.5,
      image: 'images/Mocha.jpg',
      counter: 0,
      point: 12),
  Coffee(
      name: 'Flat White',
      price: 3.5,
      image: 'images/Flat White.jpg',
      counter: 0,
      point: 12),
];

class User {
  late String? name;
  late String? phone;
  late String? email;
  late String address;
  late int cups;
  late int points;
  late List<Cart> listCart = [];
  User(
      {this.name,
      this.phone,
      this.email,
      required this.address,
      required this.cups,
      required this.points});
}

List<User> listUser = [
  User(
      address: 'Nothing',
      cups: 0,
      points: 1340,
      name: 'User',
      phone: '023456789',
      email: 'a1@gmail.com'),
];
