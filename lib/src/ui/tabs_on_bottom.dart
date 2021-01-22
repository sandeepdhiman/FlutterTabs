import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabsOnBottom extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
        return TabState();
  }

}
class TabState extends State<TabsOnBottom>{
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
       length: 4,
       child: Scaffold(
         appBar: AppBar(
           title: Text('Bottom tabs'),
         ),
         bottomNavigationBar: menu(),
         body: TabBarView(
           children: [
             Container(child: Icon(Icons.directions_car)),
             Container(child: Icon(Icons.directions_transit)),
             Container(child: Icon(Icons.directions_bike)),
             Container(child: Icon(Icons.directions_bike)),
           ],
         ),
       ),
     );
  }
 Widget menu(){
   return Container(
       color: Color(0xFF3F5AA6),
   child: TabBar(
   labelColor: Colors.white,
   unselectedLabelColor: Colors.white70,
   indicatorSize: TabBarIndicatorSize.tab,
   indicatorPadding: EdgeInsets.all(5.0),
   indicatorColor: Colors.blue,
   tabs: [
   Tab(
   text: "Transactions",
   icon: Icon(Icons.euro_symbol),
   ),
   Tab(
   text: "Bills",
   icon: Icon(Icons.assignment),
   ),
   Tab(
   text: "Balance",
   icon: Icon(Icons.account_balance_wallet),
   ),
   Tab(
   text: "Options",
   icon: Icon(Icons.settings),
   ),
   ],
   ));}

}