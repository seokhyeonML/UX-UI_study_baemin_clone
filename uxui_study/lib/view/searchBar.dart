import 'package:flutter/material.dart';

class searchBar extends StatefulWidget {
  @override
  _searchBarState createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
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
