import 'package:flutter/material.dart';
import 'export.dart';

class Quizpage extends StatefulWidget {
  @override
  _QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  @override
  Widget build(BuildContext context) {
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
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                            ),
                            Text(
                              '100',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              height: 10,
                            ),
                            Text(
                              'average \n score',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        height: 150,
                        width: 90,
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                            ),
                            Text(
                              '75',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              height: 10,
                            ),
                            Text(
                              'this month\n    score',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        height: 150,
                        width: 90,
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
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
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.blueAccent,
                        elevation: 20,
                        child: Center(
                            child: Text(
                          'playquiz',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )))),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.blueAccent,
                        elevation: 20,
                        child: Center(
                            child: Text(
                          'playquiz - category',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )))),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 100,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.blueAccent,
                        elevation: 20,
                        child: Center(
                            child: Text(
                          'playquiz - play with our friends',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )))),
              ],
            )),
          ],
        ));
  }
}
