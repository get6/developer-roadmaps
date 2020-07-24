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
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
//        ),
//        DropdownButton<dynamic>(
//          items: <String>['한글', 'English', 'ZH'].map((String value) {
//            return DropdownMenuItem<String>(
//              value: value,
//              child: Text(value),
//            );
//          }).toList(),
//        )
      ],
    );
  }
}
