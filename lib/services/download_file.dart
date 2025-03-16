import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdfx/pdfx.dart';

class DownloadFileService{
  Future<void> telechargerCV(String assetPath, String fileName) async {
    try {
      // Obtenir le répertoire des documents
      final directory = await getApplicationDocumentsDirectory();

      // Créer le chemin du fichier à enregistrer
      final cheminFichier = join(directory.path, fileName);

      // Charger le contenu du PDF
      final bytes = await rootBundle.load(assetPath);

      await File(cheminFichier).writeAsBytes(bytes.buffer.asUint8List());


      print('Votre cv a été téléchargé avec succès');
    } catch (e) {
      print('Erreur lors du téléchargement: $e');
    }
  }

  Future<PdfController> openMyCv(String assetPath) async {
    try {
      final pdfController = PdfController(
        document: PdfDocument.openAsset(assetPath),
      );
      return pdfController;
    } catch (e) {
      print('Erreur lors de l\'ouverture du PDF: $e');
      throw Exception('Impossible d\'ouvrir le document PDF');
    }
  }
}