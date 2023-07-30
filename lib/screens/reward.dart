import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/dataList.dart';
import 'package:web_app_1/main.dart';
import 'package:web_app_1/screens/home_screen.dart';
import 'package:web_app_1/screens/my_order.dart';
import 'package:web_app_1/screens/redeme_screen.dart';

class RewardPage extends StatefulWidget {
  late Cart ordercart;
  RewardPage({super.key, required this.ordercart});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  String currentImage1 = "bcup";
  String currentImage2 = "bcup";
  String currentImage3 = "bcup";
  String currentImage4 = "bcup";
  String currentImage5 = "bcup";
  String currentImage6 = "bcup";
  String currentImage7 = "bcup";
  String currentImage8 = "bcup";

  late Cart userCart = Cart(isDone: false);
  int cup = 0;
  void _counterReset() {
    cup = listUser.last.cups;
    if (cup == 1) {
      currentImage1 = "cup";
    }
    if (cup == 2) {
      currentImage2 = "cup";
    }
    if (cup == 3) {
      currentImage3 = "cup";
    }
    if (cup == 4) {
      currentImage4 = "cup";
    }
    if (cup == 5) {
      currentImage5 = "cup";
    }
    if (cup == 6) {
      currentImage6 = "cup";
    }
    if (cup == 7) {
      currentImage7 = "cup";
    }
    if (cup == 8) {
      currentImage8 = "cup";
    }
    if (cup > 8) {
      cup = 8;
    }
    if (cup == 0) {
      currentImage1 = "bcup";
      currentImage2 = "bcup";
      currentImage3 = "bcup";
      currentImage4 = "bcup";
      currentImage5 = "bcup";
      currentImage6 = "bcup";
      currentImage7 = "bcup";
      currentImage8 = "bcup";
    }
  }

  void reset() {
    listUser.last.cups = 0;
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      cup = listUser.last.cups;
      _counterReset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Text(
              'Rewards',
              style: GoogleFonts.oswald(color: Colors.black, fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Stack(
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
                            '${cup}/8',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          reset();
                        },
                        child: Container(
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
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Stack(
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
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            const Text(
                              "My Points : ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                '${listUser.last.points}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 40),
                            child: SizedBox(
                              width: 120,
                              height: 40,
                              child: FilledButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => RedemePage(
                                                usercart: widget.ordercart)));
                                  },
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<
                                              Color>(
                                          Color.fromARGB(255, 144, 122, 107))),
                                  child: const Text(
                                    'Redeem Drinks',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Divider(
              height: 10,
              thickness: 2,
              indent: 20,
              endIndent: 20,
              color: Colors.black.withOpacity(0.2),
            ),
          )
        ],
      )),
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.only(bottom: 7, left: 5, right: 5),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(offset: Offset(0, -5), blurRadius: 20)],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(
                              name: listUser.last.name as String,
                            )));
              },
              icon: const ImageIcon(AssetImage("images/home.png")),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage("images/gift.png")),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyOrder(
                              ordercart: widget.ordercart,
                            )));
              },
              icon: const ImageIcon(AssetImage("images/myorder.png")),
              iconSize: 32,
            ),
          ],
        ),
      ),
    );
  }
}
