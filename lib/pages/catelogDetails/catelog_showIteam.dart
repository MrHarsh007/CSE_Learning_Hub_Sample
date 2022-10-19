import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:gtu_material/pages/sem_pages/sem3.dart';

import '../../homeDetails_page.dart';
import '../../models/catelog.dart';
import 'catelog_showImage.dart';

class showIteam extends StatefulWidget {
  final catIteam catelog;

  const showIteam({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  State<showIteam> createState() => _showIteamState();
}

class _showIteamState extends State<showIteam> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(widget.catelog.id.toString()),
            child: showImage(image: widget.catelog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.catelog.name.text.bold.lg
                .color(sem3Page.darkBluisColor)
                .make(),
            widget.catelog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                // "\$${catelog.price}".text.bold.xl.make(),
                ElevatedButton(
                    onPressed: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomeDetailsPage(catelog: widget.catelog)))),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red[400]),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "View".text.make()),
              ],
            ).pOnly(right: 8)
          ],
        ))
      ],
    )).white.roundedSM.square(150).make().py16();
  }
}
