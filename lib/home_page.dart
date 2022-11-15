import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtu_material/darwer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'homesemNummbers.dart';
import 'pages/catelogDetails/catelog_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
            padding: Vx.m12,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CatelogHeader().p8(),
                      Card(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              HomeNumberDetails(),
                              // SerialList()
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}
