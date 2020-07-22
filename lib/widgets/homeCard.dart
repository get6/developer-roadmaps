import 'package:developer_roadmaps/models/constraints.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _homeCard(
          Constraints.en_frontend_title, Constraints.en_frontend_subtitle),
    );
  }

  Widget _homeCard(String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: InkWell(
        splashColor: Colors.black,
        onTap: () {
          print('Card tapped');
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(subtitle),
            ),
          ],
        ),
      ),
    );
  }
}
