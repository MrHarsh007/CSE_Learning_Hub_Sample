import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catelog.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class SyllabusPage extends StatelessWidget {
  final catIteam catelog;

  const SyllabusPage({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: "${catelog.name}".text.bold.xl2.make(),
        ),
        body: Container(
          child: (catelog.syllabus.isEmpty)
              ? Center(child: "No Data Avalaible".text.bold.xl4.makeCentered())
              : PDF().cachedFromUrl(
                  catelog.syllabus,

                  maxAgeCacheObject: Duration(hours: 24), //duration of cache
                  placeholder: (progress) => Center(child: Text('$progress %')),
                  errorWidget: (error) => Center(child: Text(error.toString())),
                ),
        ),

        //  : SfPdfViewer.network(
        //       catelog.syllabus,

        //       // enableDoubleTapZooming: true,
        //       pageLayoutMode: PdfPageLayoutMode.continuous,
        //     ),
      ),
    );
  }
}
