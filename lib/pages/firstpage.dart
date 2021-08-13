import 'package:bottom_bar/bottom_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tnpscquiz/widget/export.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List pagetitle = ['homepage', 'quizpage', 'performance', 'profilepage'];
  int _currentPage = 0;
  final _pageController = PageController();
  String titlevarible = 'homepage - tnpsc';
  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: titlevarible,
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            customhomepage(context),
            Quizpage(),
            Performacepage(),
            Profilepage(),
          ],
          onPageChanged: (index) {
            // Use a better state management solution
            // setState is used for simplicity
            setState(() => _currentPage = index);
          },
        ),
        bottomNavigationBar: BottomBar(
          selectedIndex: _currentPage,
          onTap: (int index) {
            _pageController.jumpToPage(index);
            setState(() {
              _currentPage = index;
              titlevarible = pagetitle[index] + '-tnpsc';
            });
          },
          items: <BottomBarItem>[
            BottomBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.blue,
            ),
            BottomBarItem(
              icon: Icon(Icons.quiz_outlined),
              title: Text('Quiz'),
              activeColor: Colors.red,
              darkActiveColor: Colors.red.shade400, // Optional
            ),
            BottomBarItem(
              icon: Icon(Icons.data_usage),
              title: Text('charts'),
              activeColor: Colors.greenAccent.shade700,
              darkActiveColor: Colors.greenAccent.shade400, // Optional
            ),
            BottomBarItem(
              icon: Icon(Icons.supervised_user_circle),
              title: Text('Profile'),
              activeColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class Carousalslider extends StatelessWidget {
  const Carousalslider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        //1st Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //2nd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300?grayscale"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //3rd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //4th Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //5th Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
