import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.handyman_rounded),
            Icon(Icons.call_end_sharp),
            Icon(Icons.accessible_forward_rounded),
            Icon(Icons.do_disturb_off_outlined),
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.handyman_rounded),
            Icon(Icons.call_end_sharp),
            Icon(Icons.accessible_forward_rounded),
            Icon(Icons.do_disturb_off_outlined),
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.handyman_rounded),
            Icon(Icons.call_end_sharp),
            Icon(Icons.accessible_forward_rounded),
            Icon(Icons.do_disturb_off_outlined),
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.handyman_rounded),
            Icon(Icons.call_end_sharp),
            Icon(Icons.accessible_forward_rounded),
            Icon(Icons.do_disturb_off_outlined),
            Icon(Icons.ac_unit_sharp),
            Icon(Icons.handyman_rounded),
            Icon(Icons.call_end_sharp),
            Icon(Icons.accessible_forward_rounded),
            Icon(Icons.do_disturb_off_outlined),
          ],
        ));
  }
}
