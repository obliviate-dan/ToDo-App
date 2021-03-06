import 'package:flutter/material.dart';
import 'package:todoapp/UI/Intray/intray_page/intray_page.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          dialogBackgroundColor: Colors.transparent
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        color: Colors.yellow,
        home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
              children: <Widget> [
                TabBarView(
                children: [
                IntrayPage(),
                  new Container( color: Colors.red),
                  new Container(
                    color: Colors.redAccent,
                  ),
                ],
              ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Intray", style: intrayTitleStyle,),
                      Container()
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(top: 130, left: MediaQuery.of(context).size.width*0.5 - 30),
                  child: FloatingActionButton(
                      child: Icon(Icons.add, size: 80,),
                      backgroundColor: RedColor,
                      onPressed: () {},
                ),
                ),
              ],
            ),
            appBar: AppBar(
              elevation: 0,
              title: new TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.home),
                  ),
                  Tab(
                    icon: new Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: new Icon(Icons.perm_identity),
                  ),
                ],
                labelColor: DarkGreyColor,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.transparent,
              ),
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

