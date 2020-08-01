import 'package:flutter/material.dart';

import '../widgets/home_page_app_bar.dart';

class AndroidPage extends StatelessWidget {
  static const String routeName = '/android';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomePageAppBar(
        title: 'android_title',
      ),
      body: Text('android'),
    );
  }
}
