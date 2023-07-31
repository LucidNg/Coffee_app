import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/dataList.dart';

class RedemePage extends StatefulWidget {
  late Cart usercart;
  RedemePage({super.key, required this.usercart});

  @override
  State<RedemePage> createState() => _RedemePageState();
}

class _RedemePageState extends State<RedemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () => Navigator.of(context).pop(),
                  iconSize: 30,
                  padding: const EdgeInsets.only(left: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 170),
                  child: Text(
                    'Redeem',
                    style:
                        GoogleFonts.oswald(color: Colors.black, fontSize: 25),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 35, right: 35),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 15),
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Image.asset(
                      "images/Americano.png",
                      height: 70,
                      width: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Americano',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Valid until'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9),
                      child: FilledButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 56, 34, 18))),
                          child: const Text(
                            '200pt',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 35, right: 35),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 15),
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Image.asset(
                      "images/Cappuccino.png",
                      height: 70,
                      width: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Cappuccino',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Valid until'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    FilledButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 56, 34, 18))),
                        child: const Text(
                          '200pt',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 35, right: 35),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 15),
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Image.asset(
                      "images/Flat White.png",
                      height: 70,
                      width: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Flat White',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Valid until'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: FilledButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 56, 34, 18))),
                          child: const Text(
                            '200pt',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 35, right: 35),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 15),
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Image.asset(
                      "images/Mocha.png",
                      height: 70,
                      width: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Mocha',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Valid until'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: FilledButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 56, 34, 18))),
                          child: const Text(
                            '200pt',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
