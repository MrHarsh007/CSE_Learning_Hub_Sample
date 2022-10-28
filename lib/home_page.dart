import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtu_material/darwer.dart';

import 'package:gtu_material/homesemNummbers.dart';
import 'package:gtu_material/pages/sem_pages/sem3.dart';
import 'package:velocity_x/velocity_x.dart';

import 'routes/routes.dart';
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
            padding: Vx.m16,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CatelogHeader().p16(),
                      Card(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              HomeNumberDetails(),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.helpRoute);
        },
        backgroundColor: Colors.red[300],
        child: const Icon(CupertinoIcons.helm),
      ),
    ));
  }
}
