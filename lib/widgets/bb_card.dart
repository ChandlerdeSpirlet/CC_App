import 'package:flutter/material.dart';
import '../models/bb.dart';

class bb_card extends StatelessWidget {
  final BlackBelt bb;
  bb_card(this.bb);

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      ListTile(
        title: Text(bb.name + "(" + bb.barcode.toString() + ")"),
        subtitle: Text("Regular: " + bb.regular.toString() + '\n' + "Sparring: " + bb.sparring.toString() + '\n' + "Swats: " + bb.swats.toString()), 
      ),
      Divider()
    ],
  );
}