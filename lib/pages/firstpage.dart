import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: 'home page',
      child: Scaffold(
        drawer: Drawer(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 35,
              title: Text('tnpscquiz'),
              backgroundColor: Theme.of(context).primaryColor,
              centerTitle: true,
            )
          ],
        ),
      ),
    );
  }
}
