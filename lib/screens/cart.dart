import 'package:flutter/material.dart';
import 'package:web_app_1/dataList.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app_1/screens/oder_success.dart';

class myCart extends StatefulWidget {
  late Cart mycart;
  myCart({super.key, required this.mycart});

  @override
  State<myCart> createState() => _myCartState();
}

class _myCartState extends State<myCart> {
  bool isPress = false;
  void _isPress() {
    setState(() {
      isPress = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () => Navigator.of(context).pop(),
              iconSize: 30,
              padding: const EdgeInsets.only(right: 300),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 220, top: 8, bottom: 20),
                child: Text(
                  'My Cart ${listUser.last.cups}',
                  style: GoogleFonts.robotoMono(
                      fontSize: 25, fontWeight: FontWeight.bold),
                )),
            ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.mycart.listContains.length,
              itemBuilder: (context, index) {
                int length = widget.mycart.listContains.length;
                List<Widget> item = [];
                for (int i = 0; i <= length; i++) {
                  if (isPress == true) break;
                  item.add(
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 5),
                                            child: Image.asset(
                                              widget.mycart.listContains[i]
                                                  .drink.image,
                                              width: 60,
                                              height: 60,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '${widget.mycart.listContains[i].drink.name}',
                                                  style: GoogleFonts.robotoMono(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  ' x ${widget.mycart.listContains[i].drink.counter} ',
                                                  style: GoogleFonts.robotoMono(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '| \$${widget.mycart.listContains[i].drink.calculateTotal(widget.mycart.listContains[i].size)}',
                                                  style: GoogleFonts.robotoMono(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            Row(children: <Widget>[
                                              if (widget.mycart.listContains[i]
                                                      .shot ==
                                                  0)
                                                const Text(
                                                  'Single',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              else
                                                const Text('Double',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              const Text(' | ',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              if (widget.mycart.listContains[i]
                                                      .hotOrcold ==
                                                  0)
                                                const Text('Hot',
                                                    style: TextStyle(
                                                        color: Colors.white))
                                              else
                                                const Text('Cold',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              const Text(' | ',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              if (widget.mycart.listContains[i]
                                                      .size ==
                                                  0)
                                                const Text('Small',
                                                    style: TextStyle(
                                                        color: Colors.white))
                                              else if (widget.mycart
                                                      .listContains[i].size ==
                                                  1)
                                                const Text('Medium',
                                                    style: TextStyle(
                                                        color: Colors.white))
                                              else
                                                const Text('Large',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              const Text(' | ',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              if (widget.mycart.listContains[i]
                                                      .ice ==
                                                  0)
                                                const Text('25% Ice',
                                                    style: TextStyle(
                                                        color: Colors.white))
                                              else if (widget.mycart
                                                      .listContains[i].ice ==
                                                  1)
                                                const Text('50% Ice',
                                                    style: TextStyle(
                                                        color: Colors.white))
                                              else
                                                const Text('75% Ice',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                            ])
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          widget.mycart.listContains
                                              .removeAt(i);
                                        });
                                      },
                                      icon: const ImageIcon(
                                        AssetImage("images/bin.png"),
                                        size: 30,
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                  return Column(
                    children: item,
                  );
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(offset: Offset(0, -5), blurRadius: 20)],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  const Text(
                    'Total Price',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$${widget.mycart.money()}',
                    style: const TextStyle(
                        height: 1.5, fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            FilledButton(
                onPressed: () {
                  setState(() {
                    listUser.last.cups += widget.mycart.numCups();
                  });
                  _isPress();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => orderSuccess(
                                mycart: widget.mycart,
                              )));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(255, 56, 34, 18))),
                child: const Text(
                  'Place Order',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
