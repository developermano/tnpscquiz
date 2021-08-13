import 'package:flutter/material.dart';

import 'export.dart';

class Performacepage extends StatefulWidget {
  @override
  _PerformacepageState createState() => _PerformacepageState();
}

class _PerformacepageState extends State<Performacepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Customdrawer(),
        body: CustomScrollView(slivers: [
          Customappbar(),
          SliverToBoxAdapter(
              child: Container(
                  child: Column(
            children: [
              cardchartwidget('all performance'),
              cardchartwidget('last 30 performance'),
              cardchartwidget('today performance'),
              cardchartwidget('this week performance'),
            ],
          )))
        ]));
  }
}

Widget cardchartwidget(String cardtxt) {
  return Center(
      child: Container(
    height: 100,
    width: double.infinity,
    margin: EdgeInsets.all(10),
    child: Card(
        child: Center(
          child: Text(
            cardtxt,
            style: TextStyle(color: Colors.white),
          ),
        ),
        color: Colors.lightGreen,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        )),
  ));
}
