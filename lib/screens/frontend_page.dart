import 'package:developer_roadmaps/models/frontend.dart';
import 'package:developer_roadmaps/models/roadmap.dart';
import 'package:developer_roadmaps/widgets/common_container.dart';
import 'package:flutter/material.dart';

import '../widgets/home_page_app_bar.dart';

class FrontendPage extends StatefulWidget {
  const FrontendPage({Key key}) : super(key: key);

  static const String routeName = '/frontend';

  @override
  _FrontendPageState createState() => _FrontendPageState();
}

class _FrontendPageState extends State<FrontendPage> {
  final List<Roadmap> _data = Frontend().makeRoadMaps();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomePageAppBar(
        title: 'frontend_title',
      ),
      body: SingleChildScrollView(
        child: CommonContainer(
          child: _buildPanel(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            setState(() {
              _data.map((Roadmap Roadmap) => Roadmap.isExpanded = false).toList();
            })
        ,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Icon(
          Icons.refresh,
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Roadmap Roadmap) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(Roadmap.headerValue,
                style: TextStyle(fontWeight: FontWeight.bold,),),
            );
          },
          body: ListTile(
              title: Text(Roadmap.expandedValue),
              //subtitle: Text('To delete this panel, tap the trash can icon'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, '/backend');
              }),
          isExpanded: Roadmap.isExpanded,
        );
      }).toList(),
    );
  }
}
