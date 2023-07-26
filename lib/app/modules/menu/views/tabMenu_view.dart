import 'package:f1_app/app/modules/menu/controllers/tabMenu_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class TabMenuView extends GetView<TabMenuController> {
  const TabMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: const MenuWidget(),
    );
  }
}

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: _currentIndex,
      onTap: (i) => setState(() => _currentIndex = i),
      items: [
        /// Home
        SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
            activeIcon: Icon(Icons.abc)),

        /// Likes
        SalomonBottomBarItem(
          icon: Icon(Icons.calendar_month),
          title: Text("Schedule"),
          selectedColor: Colors.pink,
        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.person_rounded),
          title: Text("Driver"),
          selectedColor: Colors.orange,
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
          selectedColor: Colors.teal,
        ),
      ],
    );
  }
}
