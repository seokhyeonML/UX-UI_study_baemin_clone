import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color:Colors.black),
            borderRadius: BorderRadius.circular(180)
        ),
        child: Row(children: [Icon(Icons.search), Text("먹고 싶은 메뉴, 가게 검색")]));
  }
}
