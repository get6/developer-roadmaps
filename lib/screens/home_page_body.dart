import 'package:developer_roadmaps/widgets/common_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.locale.toString());
    return CommonContainer(
      child: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          _homeCard(
            context,
            title: 'frontend_title'.tr().toString(),
            subtitle: 'frontend_subtitle'.tr().toString(),
          ),
          _homeCard(
            context,
            title: 'backend_title'.tr().toString(),
            subtitle: 'backend_subtitle'.tr().toString(),
          ),
          _homeCard(
            context,
            title: 'devOps_title'.tr().toString(),
            subtitle: 'devOps_subtitle'.tr().toString(),
          ),
          _homeCard(
            context,
            title: 'react_title'.tr().toString(),
            subtitle: 'react_subtitle'.tr().toString(),
          ),
          _homeCard(
            context,
            title: 'android_title'.tr().toString(),
            subtitle: 'android_subtitle'.tr().toString(),
          ),
          _homeCard(
            context,
            title: 'qaEngineer_title'.tr().toString(),
            subtitle: 'qaEngineer_subtitle'.tr().toString(),
          ),
        ],
      ),
    );
  }

  Widget _homeCard(BuildContext context,
      {@required String title, @required String subtitle}) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 13.0,
        horizontal: 25.0,
      ),
      child: InkWell(
        splashColor: Colors.black,
        onTap: () {
          Navigator.pushNamed(context, '/' + title.toLowerCase());
        },
        child: ListTile(
          contentPadding: const EdgeInsets.fromLTRB(
            10.0,
            2.0,
            10.0,
            2.0,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              top: 1.0,
              bottom: 1.0,
            ),
            child: Text(subtitle),
          ),
        ),
      ),
    );
  }
}
