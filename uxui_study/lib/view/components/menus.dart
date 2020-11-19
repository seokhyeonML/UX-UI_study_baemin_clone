import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:uxui_study/providers/themeProvider.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Widget Menu({String iconName, String menuName, themeProvider provider}){
    if(iconName==null && menuName==null){
      return Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/images/icons/"+provider.theme+"/heart.svg",
            height: 7.2,
            width: 6,
          )
      );
    }
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:8, left:18, right:17, bottom: 2),
            child: SvgPicture.asset(
              "assets/images/icons/"+iconName+".svg",
              height: 48,
              width: 48,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            alignment: Alignment.topCenter,
            child: Text(menuName,
                style: TextStyle(
                  fontFamily: "BMHANNA",
                  fontSize: 15,
                  color: Theme.of(context).focusColor,
                  letterSpacing: -0.9,
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    themeProvider provider = Provider.of<themeProvider>(context,listen:true);
    return Container(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.only(left:14,top:10,right: 14, bottom: 10),
            crossAxisCount: 4,
            children: [
              Menu(iconName:"burger", menuName:"패스트푸드", provider: provider),
              Menu(iconName:"pizza", menuName:"피자", provider: provider),
              Menu(iconName:"chicken-leg", menuName:"치킨", provider: provider),
              Menu(iconName:"coffee", menuName:"카페", provider: provider),
              Menu(iconName:"noodles", menuName:"아시안/양식", provider: provider),
              Menu(iconName:"burger", menuName:"패스트푸드", provider: provider),
              Menu(iconName:"pizza", menuName:"피자", provider: provider),
              Menu(iconName:"chicken-leg", menuName:"치킨", provider: provider),
              Menu(iconName:"coffee", menuName:"카페", provider: provider),
              Menu(iconName:"noodles", menuName:"아시안/양식", provider: provider),
              Menu(iconName:"burger", menuName:"패스트푸드", provider: provider),
              Menu(iconName:"pizza", menuName:"피자", provider: provider),
              Menu(iconName:"chicken-leg",menuName: "치킨", provider: provider),
              Menu(iconName:"coffee", menuName:"카페", provider: provider),
              Menu(iconName:"noodles", menuName:"아시안/양식", provider: provider),
              Menu(iconName:"burger",menuName: "패스트푸드", provider: provider),
              Menu(iconName:"pizza", menuName:"피자", provider: provider),
              Menu(iconName:"chicken-leg", menuName:"치킨", provider: provider),
              Menu(iconName:"coffee", menuName:"카페", provider: provider),
              Menu(iconName:"noodles", menuName:"아시안/양식", provider: provider),
              Menu(iconName:"chicken-leg", menuName:"치킨", provider: provider),
              Menu(provider: provider),
              Menu(provider: provider),
              Menu(provider: provider),
            ],
          ),
    );
  }
}
