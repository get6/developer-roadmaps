import 'dart:convert';

import 'package:developer_roadmaps/models/roadmap.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';

class Frontend extends Roadmap {
  final String roadmapPath = 'assets/roadmap/frontend.json';

  Frontend({String headerValue, String expandedValue, bool isExpanded})
      : super(
            headerValue: headerValue,
            expandedValue: expandedValue,
            isExpanded: isExpanded);

  @override
  Future<List<Frontend>> makeRoadMaps() async {
    final dynamic roadmap = await _getJson();
    List<Frontend> roadmaps;
    roadmap.forEach((String key, dynamic value) {
      roadmaps.add(Frontend(
          headerValue: key.tr().toString(),
          expandedValue: value.toString(),
          isExpanded: roadmaps.isEmpty));
    });
    return roadmaps;
  }

  dynamic _getJson() async {
    final String data = await rootBundle.loadString(roadmapPath);
    final dynamic returnVal = await jsonDecode(data);
    return returnVal;
  }
}
