import 'package:get/get.dart';

import '../controllers/tabMenu_controller.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabMenuController>(
      () => TabMenuController(),
    );
  }
}
