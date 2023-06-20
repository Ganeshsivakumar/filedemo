import 'package:filedemo/docs.dart';
import 'package:flutter/services.dart' show rootBundle;

class TextLoader {
  final String filePath;
  TextLoader({required this.filePath});

  Future<List<Document>> load() async {
    String fileDocs;
    List<Document> docs = [];
    fileDocs = await rootBundle.loadString(filePath);
    Document finalDocs =
        Document(pageContent: fileDocs, metadata: {'Source': filePath});

    docs.add(finalDocs);
    return docs;
  }
}
