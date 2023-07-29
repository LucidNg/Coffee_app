import 'package:flutter/material.dart';
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
          Container(
            child: Image.asset(
              "order.png",
              height: 100,
              width: 100,
            ),
          ),
          Text('đâ')
        ],
      )),
    );
  }
}
