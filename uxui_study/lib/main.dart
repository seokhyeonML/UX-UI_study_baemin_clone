import 'package:flutter/material.dart';
import 'package:uxui_study/view/delivery.dart';
import 'package:uxui_study/view/takeout.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primaryColor: Color(0xFFFFFFFF),
        accentColor: Color(0xFF29C1BC),
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(84),
            child:appBar(context)
          ),
          body: TabBarView(
            children: [Delivery(), Takeout()],
          )),
    );
  }

  Widget appBar(BuildContext context){
    return  AppBar(
      leading: Container(
          height: 48,
          width: 48,
          child: SvgPicture.asset(
            'assets/images/ico_alarm.svg',
            height: 16.5,
            width: 16.5,
          )),
      titleSpacing: 0,
      title: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text("경기도 성남시 분당구 대왕판교로644번길 49 다산타워 6층",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 11.25)),
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/arrow_down.svg',
                  width: 24,
                  height: 24,
                )
              ])),
      actions: [
        Container(
            height: 48,
            width: 48,
            child: SvgPicture.asset(
              'assets/images/dark.svg',
              height: 16.5,
              width: 16.5,
            )),
      ],
      centerTitle: true,
      bottom: tabBar(context),
    );
  }

  Widget tabBar(BuildContext context){
    return TabBar(tabs: [
      Container(
          height: 34,
          child: Tab(
              child: Text("배달",
                  style: GoogleFonts.notoSans(
                      fontSize: 11.25,
                      fontWeight: FontWeight.bold
                  )

              )
          )
      ),
      Container(
          height: 34,
          child: Tab(
              child: Text("포장/방문",
                  style: GoogleFonts.notoSans(fontSize: 11.25,fontWeight: FontWeight.bold)
              )
          )
      )
    ],
      labelColor: Theme.of(context).accentColor,
      unselectedLabelColor: Colors.black  ,
      indicatorWeight: 5,
    );
  }
}
