import 'package:flutter/material.dart';
import '../repository/source.dart';
import '../models/bb.dart';
import '../widgets/bb_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BlackBelt> _bb = <BlackBelt>[];

  @override
  void initState() {
    super.initState();
    listenForBB();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('EMA Class Counts'),
    ),
    body: ListView.builder(
      itemCount: _bb.length,
      itemBuilder: (context, index) => bb_card(_bb[index]),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.refresh),
      onPressed: listenForBB,
    ),
  );

  void listenForBB() async {
    final Stream<BlackBelt> stream = await getBB();
    stream.listen((BlackBelt black) =>
      setState(() => _bb.add(black))
    );
  }
}