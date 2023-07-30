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
                  padding: EdgeInsets.only(right: 160),
                  child: Text(
                    'Redeem',
                    style:
                        GoogleFonts.oswald(color: Colors.black, fontSize: 25),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
