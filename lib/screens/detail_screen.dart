import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/dataList.dart';
import 'package:web_app_1/screens/cart.dart';

class DetailScreen extends StatefulWidget {
  late Coffee userDrink;
  late Cart userCart;
  DetailScreen({super.key, required this.userDrink, required this.userCart});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Contains drinksInfo =
      Contains(drink: widget.userDrink, shot: 0, hotOrcold: 0, size: 0, ice: 0);

  void addToCart() {
    widget.userCart.listContains.add(drinksInfo);
  }

  void _Counterdown() {
    setState(() {
      widget.userDrink.counter--;
      if (widget.userDrink.counter < 0) {
        widget.userDrink.counter = 0;
      }
    });
  }

  void _Counterup() {
    setState(() {
      widget.userDrink.counter++;
    });
  }

  Color _single = const Color.fromARGB(255, 65, 44, 31);
  Color _double = const Color.fromARGB(255, 65, 44, 31);

  void _Shot1() {
    setState(() {
      _single = const Color.fromARGB(255, 168, 114, 81);
      _double = const Color.fromARGB(255, 65, 44, 31);
      drinksInfo.shot = 0;
    });
  }

  void _Shot2() {
    setState(() {
      _double = const Color.fromARGB(255, 168, 114, 81);
      _single = const Color.fromARGB(255, 65, 44, 31);
      drinksInfo.shot = 1;
    });
  }

  Color _hot = const Color.fromARGB(255, 65, 44, 31);
  Color _cold = const Color.fromARGB(255, 65, 44, 31);

  void _hotOrcold1() {
    setState(() {
      _hot = const Color.fromARGB(255, 168, 114, 81);
      _cold = const Color.fromARGB(255, 65, 44, 31);
      drinksInfo.hotOrcold = 0;
      _iceS = const Color.fromARGB(255, 163, 160, 159);
      _iceM = const Color.fromARGB(255, 163, 160, 159);
      _iceL = const Color.fromARGB(255, 163, 160, 159);
    });
  }

  void _hotOrcold2() {
    setState(() {
      _cold = const Color.fromARGB(255, 168, 114, 81);
      _hot = const Color.fromARGB(255, 65, 44, 31);
      drinksInfo.hotOrcold = 1;
      _iceS = const Color.fromARGB(255, 65, 44, 31);
      _iceM = const Color.fromARGB(255, 65, 44, 31);
      _iceL = const Color.fromARGB(255, 65, 44, 31);
    });
  }

  Color _S = const Color.fromARGB(255, 65, 44, 31);
  Color _M = const Color.fromARGB(255, 65, 44, 31);
  Color _L = const Color.fromARGB(255, 65, 44, 31);

  void _setSizeS() {
    setState(() {
      _S = const Color.fromARGB(255, 168, 114, 81);
      _M = const Color.fromARGB(255, 65, 44, 31);
      _L = const Color.fromARGB(255, 65, 44, 31);
      drinksInfo.size = 0;
    });
  }

  void _setSizeM() {
    setState(() {
      _M = const Color.fromARGB(255, 168, 114, 81);
      _S = const Color.fromARGB(255, 65, 44, 31);
      _L = const Color.fromARGB(255, 65, 44, 31);
      drinksInfo.size = 1;
    });
  }

  void _setSizeL() {
    setState(() {
      _L = const Color.fromARGB(255, 168, 114, 81);
      _M = const Color.fromARGB(255, 65, 44, 31);
      _S = const Color.fromARGB(255, 65, 44, 31);
      drinksInfo.size = 2;
    });
  }

  Color _iceS = const Color.fromARGB(255, 65, 44, 31);
  Color _iceM = const Color.fromARGB(255, 65, 44, 31);
  Color _iceL = const Color.fromARGB(255, 65, 44, 31);

  void _setIceS() {
    setState(() {
      if (drinksInfo.hotOrcold == 0) {
        drinksInfo.ice = 4;
      } else {
        _iceS = const Color.fromARGB(255, 168, 114, 81);
        _iceM = const Color.fromARGB(255, 65, 44, 31);
        _iceL = const Color.fromARGB(255, 65, 44, 31);
        drinksInfo.ice = 0;
      }
    });
  }

  void _setIceM() {
    setState(() {
      if (drinksInfo.hotOrcold == 0) {
        drinksInfo.ice = 4;
      } else {
        _iceM = const Color.fromARGB(255, 168, 114, 81);
        _iceS = const Color.fromARGB(255, 65, 44, 31);
        _iceL = const Color.fromARGB(255, 65, 44, 31);
        drinksInfo.ice = 1;
      }
    });
  }

  void _setIceL() {
    setState(() {
      if (drinksInfo.hotOrcold == 0) {
        drinksInfo.ice = 4;
      } else {
        _iceL = const Color.fromARGB(255, 168, 114, 81);
        _iceM = const Color.fromARGB(255, 65, 44, 31);
        _iceS = const Color.fromARGB(255, 65, 44, 31);
        drinksInfo.ice = 2;
      }
    });
  }

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
            Text(
              'Details',
              style: GoogleFonts.oswald(color: Colors.black, fontSize: 25),
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => myCart(
                              mycart: widget.userCart,
                            )));
              },
              iconSize: 30,
              padding: const EdgeInsets.only(right: 30),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
                width: 3, color: const Color.fromARGB(255, 255, 255, 255)),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          child: Image.asset(widget.userDrink.image),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.userDrink.name as String,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 3),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(CupertinoIcons.minus),
                      iconSize: 20,
                      color: Colors.brown,
                      onPressed: _Counterdown,
                    ),
                    Text(
                      '${widget.userDrink.counter.round()}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(CupertinoIcons.add),
                      iconSize: 20,
                      color: Colors.brown,
                      onPressed: _Counterup,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
          indent: 20,
          endIndent: 20,
          color: Colors.black.withOpacity(0.2),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
          child: Row(
            children: [
              const Text(
                "Shot",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 120,
                  ),
                  child: ElevatedButton(
                    onPressed: _Shot1,
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        backgroundColor: _single),
                    child: const Text('Single'),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(
                    onPressed: _Shot2,
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        backgroundColor: _double),
                    child: const Text('Double'),
                  ))
              // ]),
              // )
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
          indent: 20,
          endIndent: 20,
          color: Colors.black.withOpacity(0.2),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Select',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const ImageIcon(
                    AssetImage("images/hot_cf.png"),
                    size: 40,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: ElevatedButton(
                        onPressed: _hotOrcold1,
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            backgroundColor: _hot),
                        child: const Text('Hot'),
                      )),
                  const ImageIcon(
                    AssetImage("images/ice_cf.png"),
                    size: 40,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: ElevatedButton(
                        onPressed: _hotOrcold2,
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            backgroundColor: _cold),
                        child: const Text('Cold'),
                      )),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
          indent: 20,
          endIndent: 20,
          color: Colors.black.withOpacity(0.2),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const ImageIcon(
                    AssetImage("images/coffee-cup.png"),
                    size: 20,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: ElevatedButton(
                        onPressed: _setSizeS,
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            backgroundColor: _S),
                        child: const Text('S'),
                      )),
                  const ImageIcon(
                    AssetImage("images/coffee-cup.png"),
                    size: 25,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: ElevatedButton(
                        onPressed: _setSizeM,
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          backgroundColor: _M,
                        ),
                        child: const Text('M'),
                      )),
                  const ImageIcon(
                    AssetImage("images/coffee-cup.png"),
                    size: 30,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: ElevatedButton(
                        onPressed: _setSizeL,
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            backgroundColor: _L),
                        child: const Text('L'),
                      )),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
          indent: 20,
          endIndent: 20,
          color: Colors.black.withOpacity(0.2),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Ice',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ElevatedButton(
                        onPressed: _setIceS,
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            backgroundColor: _iceS),
                        child: const ImageIcon(
                          AssetImage("images/_1_ice-cube.png"),
                          size: 30,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: ElevatedButton(
                        onPressed: _setIceM,
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          backgroundColor: _iceM,
                        ),
                        child: const ImageIcon(
                          AssetImage("images/_2_ice-cubes.png"),
                          size: 30,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 15, right: 5),
                      child: ElevatedButton(
                        onPressed: _setIceL,
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            backgroundColor: _iceL),
                        child: const ImageIcon(
                          AssetImage("images/_3_ice-cubes.png"),
                          size: 30,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Total amount \$${widget.userDrink.calculateTotal(drinksInfo.size)}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 0, left: 20),
                      child: OutlinedButton(
                          onPressed: () {
                            addToCart();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => myCart(
                                          mycart: widget.userCart,
                                        )));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll<Color>(
                                      Color.fromARGB(255, 65, 44, 31)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0))),
                              fixedSize: const MaterialStatePropertyAll<Size>(
                                  Size(135, 50))),
                          child: const Text(
                            'UPDATE CART',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 243, 183, 145)),
                          ))),
                ],
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
