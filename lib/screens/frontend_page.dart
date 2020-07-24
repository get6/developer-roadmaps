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
      body: Text('frontend'),
    );
  }
}
