import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 35,
      title: Text('tnpscquiz'),
      backgroundColor: Theme.of(context).primaryColor,
      centerTitle: true,
    );
  }
}
