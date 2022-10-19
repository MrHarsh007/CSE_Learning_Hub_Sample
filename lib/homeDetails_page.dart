import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catelog.dart';

class HomeDetailsPage extends StatelessWidget {
  final catIteam catelog;

  const HomeDetailsPage({
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
        body: (catelog.pdf.isEmpty)
            ? Center(child: "No Data Avalaible".text.bold.xl4.makeCentered())
            : SfPdfViewer.network(
                catelog.pdf,
                // enableDoubleTapZooming: true,
                pageLayoutMode: PdfPageLayoutMode.continuous,
              ),
      ),
    );
  }
}
