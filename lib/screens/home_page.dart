import 'package:developer_roadmaps/widgets/home_page_app_bar.dart';
import 'package:developer_roadmaps/screens/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, this.title}) : super(key: key);
  static const String routeName = '/home';
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(title: title,),
      body: const HomePageBody(),
      // drawer: const AppDrawer(currentPage: '/home',) not now
    );
  }
}
