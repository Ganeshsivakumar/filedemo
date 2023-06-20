abstract class LangchainDocument {
  late String pageContent;
  Map<String, dynamic>? metadata;
}

class Document implements LangchainDocument {
  @override
  late String pageContent;

  @override
  Map<String, dynamic>? metadata = {};

  Document({required this.pageContent, this.metadata});

  @override
  String toString() {
    return 'Document{pageContent: $pageContent, metadata: $metadata}';
  }
}
