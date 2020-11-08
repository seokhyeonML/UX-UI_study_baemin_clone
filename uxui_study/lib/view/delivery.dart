import 'package:flutter/material.dart';
import 'searchBar.dart';
import 'carousel.dart';
import 'menus.dart';

class delivery extends StatefulWidget {
  @override
  _deliveryState createState() => _deliveryState();
}

class _deliveryState extends State<delivery> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      carousel(),
      menu(),
      searchBar(),
    ]));
  }
}



