import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/dataList.dart';

class orderSuccess extends StatefulWidget {
  late Cart mycart;
  orderSuccess({super.key, required this.mycart});

  @override
  State<orderSuccess> createState() => _orderSuccessState();
}

class _orderSuccessState extends State<orderSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Image(
              image: AssetImage("images/order.png"),
              width: 300,
              height: 300,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Text(
                'ORDER SUCCESS',
                style: GoogleFonts.pacifico(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Padding(
              padding: const EdgeInsets.only(left: 65, top: 20),
              child: Text(
                'Your order is on proccessing',
                style: GoogleFonts.notoSans(
                    fontSize: 13, fontWeight: FontWeight.w300),
              )),
          Padding(
              padding: const EdgeInsets.only(left: 65, top: 5),
              child: Text(
                'Order detail',
                style: GoogleFonts.notoSans(
                    fontSize: 13, fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 65, top: 50),
            child: SizedBox(
              width: 300,
              height: 50,
              child: FilledButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 56, 34, 18))),
                  child: const Text(
                    'Track Your Order',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      )),
    );
  }
}
