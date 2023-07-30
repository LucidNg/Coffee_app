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
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _address = TextEditingController();
  final _mail = TextEditingController();
  bool _editable = false;
  late String pressToEdit = 'Edit Your Inforamtion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () => Navigator.of(context).pop(),
                iconSize: 30,
                padding: const EdgeInsets.only(left: 10, top: 20, right: 135),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Profile',
                  style: GoogleFonts.oswald(fontSize: 25),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 30),
            child: Container(
              height: 380,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ImageIcon(
                          AssetImage("images/user.png"),
                          size: 30,
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 190),
                            child: Column(
                              children: [Text('Fullname')],
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            height: 40,
                            child: TextField(
                              enabled: _editable,
                              textAlign: TextAlign.justify,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 2,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 2, left: 10),
                                border: const OutlineInputBorder(),
                                hintText: '${listUser.last.name}',
                              ),
                              controller: _name,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              listUser.last.name = _name.text;
                            });
                          },
                          icon: const ImageIcon(AssetImage("images/edit.png")),
                          iconSize: 32,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10, left: 20),
                        child: ImageIcon(
                          AssetImage("images/telephone.png"),
                          size: 30,
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 155),
                            child: Column(
                              children: [Text('Phone Number')],
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            height: 40,
                            child: TextField(
                              enabled: _editable,
                              textAlign: TextAlign.justify,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 2,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 2, left: 10),
                                border: const OutlineInputBorder(),
                                hintText: '${listUser.last.phone}',
                              ),
                              controller: _phone,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              listUser.last.phone = _phone.text;
                            });
                          },
                          icon: const ImageIcon(AssetImage("images/edit.png")),
                          iconSize: 32,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10, left: 20),
                        child: ImageIcon(
                          AssetImage("images/mail.png"),
                          size: 30,
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 220),
                            child: Column(
                              children: [Text('Mail')],
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            height: 40,
                            child: TextField(
                              enabled: _editable,
                              textAlign: TextAlign.justify,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 2,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 2, left: 10),
                                border: const OutlineInputBorder(),
                                hintText: listUser.last.email,
                              ),
                              controller: _mail,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              listUser.last.email = _mail.text;
                            });
                          },
                          icon: const ImageIcon(AssetImage("images/edit.png")),
                          iconSize: 32,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: ImageIcon(
                          AssetImage("images/address.png"),
                          size: 30,
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 200),
                            child: Column(
                              children: [Text('Address')],
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            height: 40,
                            child: TextField(
                              enabled: _editable,
                              textAlign: TextAlign.justify,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 2,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 2, left: 10),
                                border: const OutlineInputBorder(),
                                hintText: listUser.last.address,
                              ),
                              controller: _address,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              listUser.last.address = _address.text;
                            });
                          },
                          icon: const ImageIcon(AssetImage("images/edit.png")),
                          iconSize: 32,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FilledButton(
                      onPressed: () {
                        setState(() {
                          if (_editable == false) {
                            _editable = true;
                            pressToEdit = 'Save Your Information';
                          } else {
                            _editable = false;
                            pressToEdit = 'Edit Your Information';
                          }
                        });
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 56, 34, 18))),
                      child: Text(
                        pressToEdit,
                        style: GoogleFonts.notoSans(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      )),
                ),
              ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 30),
            child: Image(
              image: AssetImage("images/coffee.png"),
              width: 150,
              height: 150,
            ),
          )
        ],
      )),
    );
  }
}
