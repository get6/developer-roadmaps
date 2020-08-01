import 'package:developer_roadmaps/models/roadmap.dart';

class Frontend extends Roadmap {
  Frontend({String headerValue, String expandedValue, bool isExpanded})
      : super(
            headerValue: headerValue,
            expandedValue: expandedValue,
            isExpanded: isExpanded);

  @override
  List<Frontend> makeRoadMaps() {
    return List<Frontend>.generate(8, (int index) {
      return Frontend(
        headerValue: 'Internet $index',
        expandedValue: 'This is Roadmap number $index',
        isExpanded: index == 0,
      );
    });
  }
}
