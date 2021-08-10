import 'package:flutter/material.dart';

class Quizpage extends StatefulWidget {
  @override
  _QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 35,
              title: Text('tnpscquiz'),
              backgroundColor: Colors.red,
              centerTitle: true,
            ),
            SliverToBoxAdapter(
                child: Column(
              children: [
                Divider(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      Container(
                        height: 150,
                        width: 110,
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      Container(
                        height: 150,
                        width: 110,
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      )
                    ],
                  ),
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                Divider(
                  height: 20,
                )
              ],
            )),
          ],
        ));
  }
}
