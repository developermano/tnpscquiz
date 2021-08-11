import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tnpscquiz/pages/export.dart';
import 'package:tnpscquiz/widget/appbar.dart';
import 'package:tnpscquiz/widget/customdrawer.dart';

Widget customhomepage(context) {
  return Scaffold(
    drawer: Customdrawer(),
    body: CustomScrollView(
      slivers: [
        Customappbar(),
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
                  SizedBox(
                    width: double.infinity - 100.0,
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
                ],
              ),
              Divider(
                height: 30,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: 400,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 30,
                      child: Center(
                          child: Text(
                        'it is a example quotes',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      )),
                    ),
                  )
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
    ),
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
