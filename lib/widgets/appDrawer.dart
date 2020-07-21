import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({this.currentPage});

  final String currentPage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Developer Roadmaps'),
            decoration: BoxDecoration(color: Colors.deepPurple),
          ),
          ListTile(
              leading: Icon(Icons.filter_1),
              title: Text(
                'Frontend',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/frontend');
              }),
          ListTile(
              leading: Icon(Icons.filter_2),
              title: Text('Backend'),
              onTap: () {
                Navigator.of(context).pushNamed('/backend');
              }),
          ListTile(
              leading: Icon(Icons.filter_3),
              title: Text('DevOps'),
              onTap: () {
                Navigator.of(context).pushNamed('/devOps');
              }),
          ListTile(
              leading: Icon(Icons.filter_4),
              title: Text('React'),
              onTap: () {
                Navigator.of(context).pushNamed('/react');
              }),
          ListTile(
              leading: Icon(Icons.filter_5),
              title: Text('Android'),
              onTap: () {
                Navigator.of(context).pushNamed('/android');
              }),
          ListTile(
              leading: Icon(Icons.filter_6),
              title: Text('QA Engineer'),
              onTap: () {
                Navigator.of(context).pushNamed('/qaEngineer');
              }),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(''))),
      child: Stack(
        children: <Widget>[
          Positioned(
              child: Text(
            'Developer Roadmaps',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ))
        ],
      ),
    );
  }
}
