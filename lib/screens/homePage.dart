import 'package:developer_roadmaps/widgets/homeCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, this.title}) : super(key: key);
  static const String routeName = '/home';
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const HomeCard(),
      // drawer: const AppDrawer(currentPage: '/home',) not now
    );
  }
}
