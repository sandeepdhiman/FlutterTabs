import 'package:flutter/cupertino.dart';

class TabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text('It is a contact tab',
            style: TextStyle(fontSize: 20.0),
          )
      ),
    );
  }
}