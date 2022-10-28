import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class showImage extends StatelessWidget {
  final String image;

  const showImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: (Image.network(image).box.rounded.p8.make().p12().w40(context)));
  }
}
