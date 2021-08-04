import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tnpscquiz/pages/export.dart';

Widget customhomepage(context) {
  return CustomScrollView(
    slivers: [
      SliverAppBar(
        toolbarHeight: 35,
        title: Text('tnpscquiz'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      SliverToBoxAdapter(
        child: Carousalslider(),
      ),
    ],
  );
}
