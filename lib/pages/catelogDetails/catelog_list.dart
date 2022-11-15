import 'package:flutter/material.dart';

import '../../models/catelog.dart';

import 'catelog_showIteam.dart';

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatelogModel.catiteams.length,
      itemBuilder: (context, index) {
        final catelogs = CatelogModel.catiteams[index];
        return InkWell(
            onTap: null,
            // (() => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => HomeDetailsPage(catelog: catelogs)))),
            child: showIteam(catelog: catelogs));
      },
    );
  }
}
