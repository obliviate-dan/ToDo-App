import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';


class IntrayTodo extends StatelessWidget {
  final String title;
  IntrayTodo({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
      height: 100,
      decoration: BoxDecoration(
        color: RedColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          new BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10.0,
          ),
        ]
      ),
      child: Row(
        children: <Widget>[
          //Radio(
        //  ),
          Column(
            children: <Widget>[
              Text(title, style: darkTodoTitle,)
            ],
          )
        ],

      )
    );
  }

}