import 'package:flutter/material.dart';

class Mainquizpage extends StatefulWidget {
  @override
  _MainquizpageState createState() => _MainquizpageState();
}

class _MainquizpageState extends State<Mainquizpage> {
  @override
  Widget build(BuildContext context) {
    var deviceheight = MediaQuery.of(context).size.height;
    var devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "50points",
                        style: TextStyle(color: Colors.white),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.person_outlined),
                      ),
                      Text(
                        "10/20",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  height: deviceheight / 7,
                  color: Colors.brown,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: deviceheight / 20),
                          child: Text(
                              "ஆன்லைனில் ஆன்லைனில் ஆன்லைனில் ஆன்லைனில்  ஆன்லைனில்",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: deviceheight / 30),
                              textAlign: TextAlign.center),
                          color: Colors.white),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: Size.fromHeight(10).height),
                              height: Size.fromHeight(50).height,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.black,
                                  )),
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: Size.fromWidth(500)),
                                  onPressed: () {},
                                  child: Text(
                                    "data",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: Size.fromHeight(10).height),
                              height: Size.fromHeight(50).height,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.black,
                                  )),
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: Size.fromWidth(500)),
                                  onPressed: () {},
                                  child: Text(
                                    "data",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: Size.fromHeight(10).height),
                              height: Size.fromHeight(50).height,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.black,
                                  )),
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: Size.fromWidth(500)),
                                  onPressed: () {},
                                  child: Text(
                                    "data",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: Size.fromHeight(10).height),
                              height: Size.fromHeight(50).height,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                    width: 3,
                                    color: Colors.black,
                                  )),
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      fixedSize: Size.fromWidth(500)),
                                  onPressed: () {},
                                  child: Text(
                                    "data",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                          ],
                        ),
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(
                            horizontal: deviceheight / 20,
                            vertical: devicewidth / 20),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
