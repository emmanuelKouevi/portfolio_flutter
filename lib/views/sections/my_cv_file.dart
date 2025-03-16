import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdfx/pdfx.dart';

class MyCvFile extends StatefulWidget {
  const MyCvFile({super.key});

  @override
  State<MyCvFile> createState() => _MyCvFileState();
}

class _MyCvFileState extends State<MyCvFile> {
  @override
  Widget build(BuildContext context) {

    final pdfController = PdfController(
      viewportFraction: 1.0,
      document: PdfDocument.openAsset('assets/documents/portfolioCv.pdf'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Mon CV", style: GoogleFonts.ubuntu(
          fontWeight: FontWeight.bold, fontSize: 20
        ),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PdfView(controller: pdfController),
        ),
      ),
    );
  }
}
