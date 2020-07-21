import 'package:developer_roadmaps/widgets/appDrawer.dart';
import 'package:flutter/material.dart';

class FrontendPage extends StatelessWidget {
  const FrontendPage({Key key, this.title}) : super(key: key);

  static const String routeName = '/frontend';
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const AppDrawer(currentPage: '/frontend'),
      body: Text('frontend'),
    );
  }
}
