import 'package:developer_roadmaps/screens/home_page_body.dart';
import 'package:developer_roadmaps/widgets/home_page_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomePageAppBar(
        title: 'title',
      ),
      body: HomePageBody(),
      // drawer: const AppDrawer(currentPage: '/home',) not now
    );
  }
}
