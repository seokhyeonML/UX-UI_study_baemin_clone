import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uxui_study/providers/themeProvider.dart';
import 'searchBar.dart';
import 'carousel.dart';
import 'menus.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    themeProvider provider = Provider.of<themeProvider>(context,listen:true);
    return SingleChildScrollView(
        child: Column(
            children: [
              Carousel(),
              Divider(
                  thickness: 1,
                  color: provider.theme=="light"?Color(0xFFDBDBDB):Color(0xFF333333),
                  height: 1
              ),
              Stack(
                  children: [
                    Container(
                        child: Image.asset(
                          "assets/images/background/menu_category_"+provider.theme+".png",
                          fit: BoxFit.fill
                        )
                    ),
              Column(
                  children: [
                    Menu(),
                    SearchBar(),
                ]),
      ])
    ]));
  }
}
