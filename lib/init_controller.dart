import 'package:get/get.dart';
import 'package:kua_map/controllers/map_box_controller.dart';

class InitController extends Bindings {
  @override
  void dependencies() {
    Get.put(MapBoxController());
  }
}
