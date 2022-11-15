import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'help_page.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HelpPage()));
      },
      backgroundColor: Colors.red[300],
      child: const Icon(CupertinoIcons.helm),
    );
  }
}
