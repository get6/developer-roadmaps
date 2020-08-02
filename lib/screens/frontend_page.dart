import 'package:developer_roadmaps/models/frontend.dart';
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
  final Future<List<Frontend>> _data = Frontend().makeRoadMaps();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomePageAppBar(
        title: 'frontend_title',
      ),
      body: FutureBuilder<List<Frontend>>(
          future: _data,
          builder:
              (BuildContext context, AsyncSnapshot<List<Frontend>> snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: CommonContainer(
                  child: ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        snapshot.data[index].isExpanded = !isExpanded;
                      });
                    },
                    children:
                        snapshot.data.map<ExpansionPanel>((Frontend frontend) {
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(
                              frontend.headerValue,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                        body: ListTile(
                            title: Text(frontend.expandedValue),
                            //subtitle: Text('To delete this panel, tap the trash can icon'),
                            trailing: Icon(Icons.arrow_forward),
                            onTap: () {
                              Navigator.pushNamed(context, '/backend');
                            }),
                        isExpanded: frontend.isExpanded,
                      );
                    }).toList(),
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          //_data.map((Roadmap roadmap) => roadmap.isExpanded = false).toList();
        }),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}
