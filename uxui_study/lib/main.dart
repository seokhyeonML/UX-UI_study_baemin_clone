import 'package:flutter/material.dart';
import 'package:uxui_study/view/delivery.dart';
import 'package:uxui_study/view/takeout.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.alarm)),
          title: Container(
            child : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("주소"),
                Icon(Icons.keyboard_arrow_down)
              ]
            )
          ),
          actions :[
            IconButton(icon:Icon(Icons.track_changes))
          ],
          centerTitle: true,
          bottom : new TabBar(
            tabs: [
              new Tab(text: "배달"),
              new Tab(text: "포장/방문")
            ]
          )
        ),
        body: TabBarView(
          children: [
            Delivery(),
            Takeout()
          ],
        )
      ),
    );
  }
}




