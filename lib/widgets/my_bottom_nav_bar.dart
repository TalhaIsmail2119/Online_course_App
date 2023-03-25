import 'package:flutter/material.dart';
//import 'package:mad_online_course_app/constants.dart';
// import 'package:mad_online_course_app/screens/contact_page.dart';
// import 'package:mad_online_course_app/screens/discover_page.dart';
// import 'package:mad_online_course_app/screens/popular_page.dart';
// import 'package:mad_online_course_app/screens/save_page.dart';

import '../constants.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  //int curInd = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      //width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black, width: 2),
          bottom: BorderSide.none,
          left: BorderSide.none,
          right: BorderSide.none,
        ),
      ),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTapDown: (val) {
              curInd = 0;
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => DiscoverPage(),
              //   ),
              // );
              setState(() {});
            },
            child: MyBottomNavBarItems(
              myInd: 0,
              curInd: curInd,
              name: "Discover",
              icon: Icons.send,
            ),
          ),
          GestureDetector(
            onTapDown: (val) {
              curInd = 1;
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => SavePage(),
              //   ),
              // );
              setState(() {});
            },
            child: MyBottomNavBarItems(
              myInd: 1,
              curInd: curInd,
              name: "Save",
              icon: Icons.file_copy,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0XFFEA6D63),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTapDown: (val) {
              curInd = 2;
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => PopularPage(),
              //   ),
              // );
              setState(() {});
            },
            child: MyBottomNavBarItems(
              myInd: 2,
              curInd: curInd,
              name: "Popular",
              icon: Icons.local_fire_department,
            ),
          ),
          GestureDetector(
            onTapDown: (val) {
              curInd = 3;
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => ContactPage(),
              //   ),
              // );
              setState(() {});
            },
            child: MyBottomNavBarItems(
              myInd: 3,
              curInd: curInd,
              name: "Contact",
              icon: Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}

class MyBottomNavBarItems extends StatelessWidget {
  int myInd;
  int curInd;
  String name;
  IconData icon;

  MyBottomNavBarItems({
    required this.myInd,
    required this.curInd,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return myInd == curInd
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.grey,
              ),
            ],
          );
  }
}
