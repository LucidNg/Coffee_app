import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/screens/home_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreen();
}

class _IntroScreen extends State<IntroScreen> {
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      reverse: true,
      child: Container(
        padding: const EdgeInsets.only(
          top: 200,
          bottom: 35,
        ),
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/bg4.png"),
              fit: BoxFit.cover,
              opacity: 10,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Bean Haven",
              style: GoogleFonts.pacifico(
                  fontSize: 70,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  decoration: TextDecoration.overline),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 275, 0, 0),
              margin: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: TextFormField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                    contentPadding: EdgeInsets.all(20),
                    labelText: "Enter your name",
                    fillColor: Colors.white,
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.person_2_rounded,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2))),
                controller: _nameController,
              ),
            ),
            Column(
              children: [
                const Text(
                  "Welcome to our lovely coffee shop !",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(231, 255, 255, 255),
                    letterSpacing: 2,
                    height: 3,
                  ),
                ),
                const SizedBox(height: 15),
                Material(
                  color: const Color.fromARGB(210, 144, 97, 44),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                HomeScreen(name: _nameController.text),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 50),
                      child: const Text(
                        "Let's buy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
