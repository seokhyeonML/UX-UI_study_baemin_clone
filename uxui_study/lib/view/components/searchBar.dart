import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:uxui_study/providers/themeProvider.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    themeProvider provider = Provider.of<themeProvider>(context,listen:true);
    return Container(
          height: 40,
          width: 332,
          margin: EdgeInsets.only(bottom: 24),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              border: Border.all(color:Theme.of(context).focusColor),
              borderRadius: BorderRadius.circular(180),
          ),
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(left:14,top:8,bottom: 8),
              child: provider.theme=="light"?
              SvgPicture.asset(
                "assets/images/icons/light/search.svg",
                height: 24,
                width: 24,
              ):
              Image.asset(
                "assets/images/icons/dark/search.png",
                height: 24,
                width: 24,
              ),
            ),
            Text("먹고 싶은 메뉴, 가게 검색",
              style:TextStyle(
                color:Theme.of(context).focusColor,
                fontFamily: "BMHANNA",
                fontSize: 13,
                letterSpacing: -0.52
              )
            )]
          )
    );
  }
}
