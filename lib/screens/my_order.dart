import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/dataList.dart';
import 'package:web_app_1/screens/home_screen.dart';
import 'package:web_app_1/screens/reward.dart';

class MyOrder extends StatefulWidget {
  late Cart ordercart;
  MyOrder({super.key, required this.ordercart});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'My Order',
              style: GoogleFonts.oswald(
                  color: Color.fromARGB(255, 53, 48, 48), fontSize: 25),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: widget.ordercart.listContains.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Text(
                              '${widget.ordercart.listContains[index].drink.name}')
                        ],
                      ),
                    );
                  }))
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RewardPage(ordercart: widget.ordercart)));
              },
              icon: const ImageIcon(AssetImage("images/gift.png")),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage("images/myorder.png")),
              iconSize: 32,
            ),
          ],
        ),
      ),
    );
  }
}
