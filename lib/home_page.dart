import 'package:flutter/material.dart';
//import 'package:mad_online_course_app/constants.dart';
// import 'package:mad_online_course_app/screens/contact_page.dart';
// import 'package:mad_online_course_app/screens/discover_page.dart';
// import 'package:mad_online_course_app/screens/popular_page.dart';
// import 'package:mad_online_course_app/screens/save_page.dart';
//import 'package:mad_online_course_app/widgets/my_bottom_nav_bar.dart';
import 'package:online_course/constants.dart';
import 'package:online_course/contact_page.dart';
import 'package:online_course/discover_page.dart';
import 'package:online_course/popular_page.dart';
import 'package:online_course/save_page_demo.dart';
//import 'package:online_course/save_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screenList = [
    DiscoverPage(),
    //SavePage(),
    SaveDemo(),
    PopularPage(),
    ContactPage()
  ];

  myFunc() {
    setState(() {});
  }

  PersistentTabController bottomNavBarController =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screenList[curInd],
        bottomNavigationBar: InkWell(
          onTapUp: (val) {
            print(val.localPosition);
            bottomNavBarController.dispose();
            setState(() {});
          },
          child: PersistentTabView(
            context,
            controller: bottomNavBarController,
            screens: screenList,
            navBarStyle: NavBarStyle.style12,
            decoration: NavBarDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: Colors.black, width: 3),
              ),
            ),
            items: [
              PersistentBottomNavBarItem(
                activeColorPrimary: Colors.black,
                icon: Icon(Icons.send),
                inactiveIcon: Text("Discover"),
              ),
              PersistentBottomNavBarItem(
                activeColorPrimary: Colors.black,
                icon: Icon(Icons.file_copy),
              ),
              PersistentBottomNavBarItem(
                activeColorPrimary: Colors.black,
                icon: Icon(Icons.local_fire_department),
              ),
              PersistentBottomNavBarItem(
                activeColorPrimary: Colors.black,
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
