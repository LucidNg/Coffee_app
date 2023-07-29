import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/screens/cart.dart';
import 'package:web_app_1/screens/detail_screen.dart';
import 'package:web_app_1/dataList.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  String name;
  HomeScreen({super.key, required this.name});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  String currentImage1 = "bcup";
  String currentImage2 = "bcup";
  String currentImage3 = "bcup";
  String currentImage4 = "bcup";
  String currentImage5 = "bcup";
  String currentImage6 = "bcup";
  String currentImage7 = "bcup";
  String currentImage8 = "bcup";

  late Cart userCart = Cart(isDone: false);
  int cup = listUser.last.cups;

  void _counterReset() {
    if (cup > 8) {
      cup = 8;
    }
  }

  @override
  void initState() {
    super.initState();
    listUser.last.name = widget.name;
    setState(() {
      _counterReset();
    });

    print(cup);
  }

  // void _incrementCounter() {
  //   setState(() {
  //     counter++;
  //     if (counter == 1) {
  //       currentImage1 = "cup";
  //     }
  //     if (counter == 2) {
  //       currentImage2 = "cup";
  //     }
  //     if (counter == 3) {
  //       currentImage3 = "cup";
  //     }
  //     if (counter == 4) {
  //       currentImage4 = "cup";
  //     }
  //     if (counter == 5) {
  //       currentImage5 = "cup";
  //     }
  //     if (counter == 6) {
  //       currentImage6 = "cup";
  //     }
  //     if (counter == 7) {
  //       currentImage7 = "cup";
  //     }
  //     if (counter == 8) {
  //       currentImage8 = "cup";
  //     }
  //     if (counter > 8) {
  //       currentImage1 = "bcup";
  //       currentImage2 = "bcup";
  //       currentImage3 = "bcup";
  //       currentImage4 = "bcup";
  //       currentImage5 = "bcup";
  //       currentImage6 = "bcup";
  //       currentImage7 = "bcup";
  //       currentImage8 = "bcup";
  //       counter = 0;
  //     }
  //   });
  // }

  List coffee = [
    'Americano',
    'Cappuccino',
    'Mocha',
    'Flat White',
  ];

  int _currentindex = 0;
  List<Widget> navbar = const [
    Icon(Icons.home_filled),
    Icon(Icons.gif_box_rounded),
    Icon(Icons.list_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 40, 30, 0),
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: const Color.fromARGB(255, 65, 54, 47)),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  color: const Color.fromARGB(255, 65, 54, 47)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Welcome ${listUser.last.name as String}',
                            style: GoogleFonts.pacifico(
                                fontSize: 25, color: Colors.white),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "Lets order some coffee",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              // Gio Hang
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => myCart(
                                              mycart: userCart,
                                            )));
                              },
                              icon: const Icon(
                                Icons.shopping_cart,
                                size: 50,
                                color: Colors.white,
                              )),
                          const IconButton(
                              // Thong tin ca nhan
                              onPressed: null,
                              icon: Icon(Icons.person,
                                  size: 50, color: Colors.white))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                  padding: const EdgeInsets.fromLTRB(15, 3, 15, 0),
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 86, 46, 14),
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(255, 86, 46, 14)),
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Loyalty Card",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${listUser.last.cups}/8',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      // Text('Counter: $counter'), //(TEST tinh nang dem so ly)
                      // ElevatedButton(
                      //   onPressed: _incrementCounter,
                      //   child: Text('Increment'),
                      // ),
                      Container(
                        height: 70,
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                              width: 3,
                              color: const Color.fromARGB(255, 225, 173, 1)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              image: AssetImage("images/$currentImage1.png"),
                              width: 35,
                            ),
                            Image(
                              image: AssetImage("images/$currentImage2.png"),
                              width: 35,
                            ),
                            Image(
                              image: AssetImage("images/$currentImage3.png"),
                              width: 35,
                            ),
                            Image(
                              image: AssetImage("images/$currentImage4.png"),
                              width: 35,
                            ),
                            Image(
                              image: AssetImage("images/$currentImage5.png"),
                              width: 35,
                            ),
                            Image(
                              image: AssetImage("images/$currentImage6.png"),
                              width: 35,
                            ),
                            Image(
                              image: AssetImage("images/$currentImage7.png"),
                              width: 35,
                            ),
                            Image(
                              image: AssetImage("images/$currentImage8.png"),
                              width: 35,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 35 / 30,
              children: [
                for (int i = 0; i < listDrinks.length; ++i)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    margin:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.brown,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 8)
                        ]),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                          userDrink: listDrinks[i],
                                          userCart: userCart,
                                        )));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            child: Image.asset(
                              "images/${coffee[i]}.png",
                              width: 90,
                              height: 90,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  coffee[i],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_filled,
              color: Color.fromARGB(255, 70, 55, 49),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Rewards',
            icon: Icon(
              Icons.gif_box_rounded,
              color: Color.fromARGB(255, 70, 55, 49),
            ),
          ),
          BottomNavigationBarItem(
            label: 'My Orders',
            icon: Icon(
              Icons.list_rounded,
              color: Color.fromARGB(255, 70, 55, 49),
            ),
          )
        ],
        currentIndex: _currentindex,
        onTap: (int newIndex) {
          setState(() {
            _currentindex = newIndex;
          });
        },
        fixedColor: const Color.fromARGB(255, 70, 55, 49),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}