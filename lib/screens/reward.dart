import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/dataList.dart';
import 'package:web_app_1/main.dart';
import 'package:web_app_1/screens/home_screen.dart';
import 'package:web_app_1/screens/my_order.dart';

class RewardPage extends StatefulWidget {
  late Cart ordercart;
  RewardPage({super.key, required this.ordercart});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 160, top: 20),
            child: Text(
              'Rewards',
              style: GoogleFonts.oswald(color: Colors.black, fontSize: 25),
            ),
          ),
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
