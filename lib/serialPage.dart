import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gtu_material/darwer.dart';
import 'package:gtu_material/help_page.dart';
import 'package:gtu_material/notAccess.dart';
import 'package:gtu_material/pages/catelogDetails/catelog_header.dart';
import 'package:gtu_material/pages/sem_pages/sem1.dart';
import 'package:http/http.dart' as http;
import 'package:unique_identifier/unique_identifier.dart';
import 'package:gtu_material/home_page.dart';
import 'package:gtu_material/serialhome.dart';
import 'package:velocity_x/velocity_x.dart';

class SerialPage extends StatefulWidget {
  const SerialPage({
    Key? key,
  }) : super(key: key);

  @override
  _SerialPageState createState() => _SerialPageState();
}

class _SerialPageState extends State<SerialPage> {
  List _items = [];
  final url = "https://mrharsh007.github.io/GtuMaterialJson/Access.json";
  var vis = false;

  String _identifier = 'Unknown';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUniqueIdentifierState();
    readJson();
  }

// Fetch content from the json file
  Future<void> readJson() async {
    final response = await http.get(Uri.parse(url));
    final catJson = response.body;

    var decodeData = jsonDecode(catJson);

    setState(() {
      _items = decodeData["Users"];
    });
  }

  Future<void> initUniqueIdentifierState() async {
    String? identifier;
    try {
      identifier = await UniqueIdentifier.serial;
    } on PlatformException {
      identifier = 'Failed to get Unique Identifier';
    }

    if (!mounted) return;

    setState(() {
      _identifier = identifier!;
      vis = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.red[400],
          // foregroundColor: Colors.white,
          title: const Text("Email Us to Get Access"),
        ),
        body: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            String serial = _items[index]["serial"];

            return Row(children: <Widget>[
              if (serial == _identifier)
                Expanded(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: const HomePage())),
            ]);

            /* Container(
                  margin: EdgeInsets.only(right: 80, left: 80),
                  // padding: EdgeInsets.all(30),
                  child: (serial == _identifier)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            10.heightBox,
                            ElevatedButton(
                              child: serial.text.white.make(),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStateProperty.all(
                                      const StadiumBorder())),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                            ),
                            "Click Here to Open".text.caption(context).make()
                          ],
                        )
                      : Column(
                          children: [
                            10.heightBox,
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.red[400]),
                                    shape: MaterialStateProperty.all(
                                        const StadiumBorder())),
                                onPressed: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SerialHome()));
                                }),
                                child: Text("Click Here To Get Access")),
                          ],
                        )); */
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HelpPage()));
          }),
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.red[400],
          child: const Icon(CupertinoIcons.helm),
        ),
        drawer: const MyDrawer(),
      ),
    ));
    // );
  }
}
