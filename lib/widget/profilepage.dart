import 'package:flutter/material.dart';
import 'export.dart';

class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
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
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    margin: EdgeInsets.all(20),
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 150,
                          width: double.infinity,
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://picsum.photos/200/300')),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'data',
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        profilelisttile('settings', 'customize the app',
                            () => print('hello')),
                        profilelisttile('notification',
                            'customize notification', () => print('hello')),
                        profilelisttile('join', 'join with your friends',
                            () => print('hello')),
                        profilelisttile(
                            'share',
                            'share the app to your friends',
                            () => print('hello')),
                        profilelisttile('other apps', 'check my other apps',
                            () => print('hello')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]));
  }

  ListTile profilelisttile(String title, String subtitle, void ontap()) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
      ),
      subtitle: Text(subtitle),
      onTap: ontap,
    );
  }
}
