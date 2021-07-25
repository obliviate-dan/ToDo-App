import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todoapp/models/global.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage>  {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 300),
      color: DarkGreyColor,
      child: ListView(
        children: getList(),
      ),
    );
  }
  List<Widget> getList() {
    return [
      Container(
        height: 100,
        color: Colors.red,
      ),
      Container(
        height: 100,
        color: Colors.green,
      ),
      Container(
        height: 100,
        color: Colors.red,
      ),
      Container(
        height: 100,
        color: Colors.green,
      ),
      Container(
        height: 100,
        color: Colors.red,
      ),
      Container(
        height: 100,
        color: Colors.green,
      ),
      Container(
        height: 100,
        color: Colors.red,
      ),
      Container(
        height: 100,
        color: Colors.green,
      ),
    ];
  }
}
