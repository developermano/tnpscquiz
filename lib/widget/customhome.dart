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
        child: Column(
          children: [
            Divider(
              height: 20,
            ),
            Carousalslider(),
            Divider(
              height: 20,
            ),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        elevation: 10,
                      ),
                      child: Text('play quiz now'),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'blog & news: ',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
            ),
            Divider(
              height: 20,
            ),
            Column(
              children: finalwidget(),
            )
          ],
        ),
      ),
    ],
  );
}

finalwidget() {
  List<Widget> finalwidget = [];
  for (int i = 0; i < 5; i++) {
    finalwidget = finalwidget +
        [
          Container(
            child: ListTile(
              title: Text('blog title it is a example title '),
              subtitle: Text('blog description it is a example description '),
            ),
          )
        ];
  }
  return finalwidget;
}
