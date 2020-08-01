import 'package:flutter/material.dart';

import '../widgets/home_page_app_bar.dart';

class BackendPage extends StatelessWidget {
  static const String routeName = '/backend';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomePageAppBar(
        title: 'backend_title',
      ),
      body: Text('backend'),
    );
  }
}
