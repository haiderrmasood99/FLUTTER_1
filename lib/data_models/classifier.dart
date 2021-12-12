class Classifier {
  final double confidence;
  final int index;
  final String label;

  Classifier({
    required this.confidence,
    required this.index,
    required this.label,
  });

  // factory Classifier.fromJson(Map<String, dynamic> json) => Classifier(
  //       confidence: json["confidence"].toDouble(),
  //       index: json["index"],
  //       label: json["label"],
  //     );

  Classifier.fromJson(Map<String, dynamic> json)
      : confidence = json["confidence"].toDouble(),
        index = json["index"] as int,
        label = json["label"] as String;

  static List<Classifier>? fromJsonList(List<dynamic>? jsonList) => jsonList
      ?.map((e) => Classifier.fromJson(Map<String, dynamic>.from(e)))
      .toList();

  @override
  String toString() =>
      '{confidence: $confidence, index: $index, label: $label}';
}
