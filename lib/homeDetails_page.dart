import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../models/catelog.dart';

class HomeDetailsPage extends StatefulWidget {
  final catIteam catelog;

  const HomeDetailsPage({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  State<HomeDetailsPage> createState() => _HomeDetailsPageState();
}

class _HomeDetailsPageState extends State<HomeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 40,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: "${widget.catelog.name}".text.bold.xl2.make(),
          ),
          body: (widget.catelog.pdf.isEmpty)
              ? Center(child: "No Data Avalaible".text.bold.xl4.makeCentered())
              : PDF()
                  .cachedFromUrl(
                    widget.catelog.pdf,

                    maxAgeCacheObject: Duration(hours: 24),
                    //duration of cache

                    placeholder: (progress) =>
                        Center(child: Text('$progress %')),
                    errorWidget: (error) =>
                        Center(child: Text(error.toString())),
                  )
                  .scale100()),
    );
  }
}
