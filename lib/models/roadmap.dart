abstract  class Roadmap {
  Roadmap({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  final String expandedValue;
  final String headerValue;
  bool isExpanded;

  List<dynamic> makeRoadMaps();
}