import 'package:f1_app/app/modules/menu/controllers/tabMenu_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
    );
  }
}
