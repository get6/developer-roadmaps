import 'package:developer_roadmaps/models/constraints.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF0050AC), const Color(0xFF9354B9)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3, 0.7],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _homeCard(
            title: Constraints.en_frontend_title,
            subtitle: Constraints.en_frontend_subtitle,
          ),
          _homeCard(
            title: Constraints.en_backend_title,
            subtitle: Constraints.en_backend_subtitle,
          ),
          _homeCard(
            title: Constraints.en_devOps_title,
            subtitle: Constraints.en_devOps_subtitle,
          ),
          _homeCard(
            title: Constraints.en_react_title,
            subtitle: Constraints.en_react_subtitle,
          ),
          _homeCard(
            title: Constraints.en_android_title,
            subtitle: Constraints.en_android_subtitle,
          ),
          _homeCard(
            title: Constraints.en_qaEngineer_title,
            subtitle: Constraints.en_qaEngineer_subtitle,
          ),
        ],
      ),
    );
  }

  Widget _homeCard({@required String title, @required String subtitle}) {
    return Stack(
      children: <Widget>[
        Card(
          margin: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 30.0,
          ),
          shadowColor: Colors.black,
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    subtitle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
