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
        ]));
  }
}
