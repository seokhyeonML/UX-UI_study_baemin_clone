import 'package:flutter/material.dart';
import 'searchBar.dart';
import 'carousel.dart';
import 'menus.dart';

class Delivery extends StatefulWidget {
  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Carousel(),
      Menu(),
      SearchBar(),
    ]));
  }
}



