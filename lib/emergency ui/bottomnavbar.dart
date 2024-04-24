import 'package:flutter/material.dart';
import 'package:login_page/emergency%20ui/contact.dart';
import 'package:login_page/emergency%20ui/homepage.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class Bottom extends StatefulWidget {
  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> with TickerProviderStateMixin {
  MotionTabBarController? controller;

  @override
  void initState() {
    controller =
        MotionTabBarController(length: 5, vsync: this, initialIndex: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller:controller ,
        children: [
          Center(child: Text('hii')),
          Center(child: Text('home'),),
          EmergencyHome(),
          Center(child: Text('settings'),),
         Contacts(),

      
      ]),
      bottomNavigationBar: MotionTabBar(
        controller:
            controller, // ADD THIS if you need to change your tab programmatically
        initialSelectedTab: "star",
        labels: const ["Dashboard", "Home", "star", "Settings", 'contacts'],
        icons: const [
          Icons.dashboard,
          Icons.home,
          Icons.settings_applications_rounded,
          Icons.settings,
          Icons.contact_emergency
        ],

        // optional badges, length must be same with labels
        // badges: [
        //   // Default Motion Badge Widget
        //   const MotionBadgeWidget(
        //     text: '10+',
        //     textColor: Colors.white, // optional, default to Colors.white
        //     color: Colors.red, // optional, default to Colors.red
        //     size: 18, // optional, default to 18
        //   ),

        //   // custom badge Widget
        //   Container(
        //     color: Colors.black,
        //     padding: const EdgeInsets.all(2),
        //     child: const Text(
        //       '11',
        //       style: TextStyle(
        //         fontSize: 14,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),

        //   // allow null
        //   null,

        //   // Default Motion Badge Widget with indicator only
        //   const MotionBadgeWidget(
        //     isIndicator: true,
        //     color: Colors.blue, // optional, default to Colors.red
        //     size: 5, // optional, default to 5,
        //     show: true, // true / false
        //   ),
        // ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.grey,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.red,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            // _tabController!.index = value;
            controller!.index = value;
          });
        },
      ),
    );
  }
}
