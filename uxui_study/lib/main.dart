import 'package:flutter/material.dart';
import 'package:uxui_study/providers/themeProvider.dart';
import 'file:///C:/Users/mindslab/Downloads/UX-UI_study-master/uxui_study/lib/view/components/category.dart';
import 'package:uxui_study/view/takeout.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:provider/provider.dart';
import 'providers/themeProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      data: (brightness){
        return ThemeData(
          primaryColor: Color(0xFFFFFFFF),
          accentColor: Color(0xFF29C1BC),
          focusColor: Color(0xFF000001),
        );
      },
      themedWidgetBuilder: (context, theme){
        return MultiProvider(
          providers:[
            ChangeNotifierProvider<themeProvider>(create: (_) => themeProvider(),),
          ],
          child: MaterialApp(
          title: 'Flutter Demo',
          theme: theme,
          home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
        );
      }
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
  bool isDark=false;
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
            physics: NeverScrollableScrollPhysics(),
            children: [Category(), Takeout()],
          )),
    );
  }

  Widget appBar(BuildContext context){
    themeProvider provider = Provider.of<themeProvider>(context,listen:true);
    return  AppBar(
      leading: Container(
          height: 48,
          width: 48,
          child: SvgPicture.asset(
            'assets/images/icons/'+provider.theme+'/ico_alarm.svg',
            height: 24,
            width: 24,
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
                            fontSize: 15,
                        letterSpacing: -0.6)),
                  ),
                ),
               SvgPicture.asset(
                    'assets/images/icons/'+provider.theme+'/arrow_down.svg',
                    width: 24,
                    height: 24,
                  ),
              ])),
      actions: [
        Container(
            height: 48,
            width: 48,
            child: IconButton(
              iconSize: 48,
              padding: EdgeInsets.all(0.0),
              onPressed: (){
                Provider.of<themeProvider>(context,listen: false).setTheme();
                if(isDark){
                  DynamicTheme.of(context).setThemeData(new ThemeData(
                    primaryColor: Color(0xFFFFFFFF),
                    accentColor: Color(0xFF29C1BC),
                    focusColor: Color(0xFF000001),
                  ));
                  isDark=false;
                }
                else{
                  DynamicTheme.of(context).setThemeData(new ThemeData(
                    primaryColor: Color(0xFF404040),
                    accentColor: Color(0xFF29C1BC),
                    focusColor: Color(0xFFFFFFFF),
                  ));
                  isDark=true;
                }
              },
              icon: SvgPicture.asset(
                'assets/images/icons/'+provider.theme+'/mode.svg',
                height: 48,
                width: 48,
              ),
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
              )
          )
      ),
      Container(
          height: 34,
          child: Tab(
              child: Text("포장/방문",
              )
          )
      )
    ],
      labelStyle: GoogleFonts.notoSans(fontSize: 15,fontWeight: FontWeight.bold, letterSpacing: -0.6,),
      labelColor:Theme.of(context).accentColor,
      unselectedLabelStyle: GoogleFonts.notoSans(fontSize: 15,fontWeight: FontWeight.bold,letterSpacing: -0.6),
      unselectedLabelColor:Theme.of(context).focusColor,
      indicatorWeight: 5.0,
      isScrollable: false,
    );
  }
}
