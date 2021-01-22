import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabs/src/ui/tab_one.dart';
import 'package:flutter_tabs/src/ui/tab_three.dart';
import 'package:flutter_tabs/src/ui/tab_two.dart';

class Tabs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new TabState();
  }
}
class TabState extends State<Tabs>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: AppBar(
          title: Text('Tabs'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
              Tab(icon: Icon(Icons.camera_alt), text: "Tab 2"),
              Tab(icon: Icon(Icons.school), text: "Tab 3")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabOne(),
            TabTwo(),
            TabThree()
          ],
        ),
      ),
    );
  }
  
}