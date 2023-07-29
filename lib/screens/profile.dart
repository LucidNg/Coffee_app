import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/dataList.dart';

class ProfilePage extends StatefulWidget {
  late User currentUser;
  ProfilePage({super.key, required this.currentUser});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Profile',
              style: GoogleFonts.oswald(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: ImageIcon(
                    AssetImage("images/user.png"),
                    size: 30,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(),
                  child: Column(
                    children: [Text('Fullname')],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
