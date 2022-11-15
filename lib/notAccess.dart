import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gtu_material/home_page.dart';
import 'package:velocity_x/velocity_x.dart';

class NotAccess extends StatelessWidget {
  const NotAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: Vx.m12,
        child: Row(children: [Text("cdsc")]),
      ).centered(),
    ));
  }
}
