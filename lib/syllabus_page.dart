import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catelog.dart';

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
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: "${catelog.name}".text.bold.xl2.make(),
        ),
        body: (catelog.syllabus.isEmpty)
            ? Center(child: "No Data Avalaible".text.bold.xl4.makeCentered())
            : SfPdfViewer.network(
                catelog.syllabus,
                // enableDoubleTapZooming: true,
                pageLayoutMode: PdfPageLayoutMode.continuous,
              ),
      ),
    );
  }
}
