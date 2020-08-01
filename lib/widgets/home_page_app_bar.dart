import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePageAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomePageAppBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageAppBarState createState() => _HomePageAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title: Text('title'.tr().toString()),
      title: Text(widget.title.tr().toString()),
      actions: <Widget>[
        PopupMenuButton<String>(onSelected: (String value) {
          setState(() {
            context.locale = Locale(value, '');
          });
        }, itemBuilder: (BuildContext context) {
          return <PopupMenuItem<String>>[
            const PopupMenuItem<String>(value: 'ko', child: Text('한국어')),
            const PopupMenuItem<String>(value: 'en', child: Text('English')),
          ];
        }),
      ],
    );
  }
}
