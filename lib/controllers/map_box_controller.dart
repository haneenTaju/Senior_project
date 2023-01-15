// ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart' as lt;
import 'package:get/get.dart';
import '../models/locate_model.dart';

class MapBoxController extends GetxController {
  static MapBoxController instance = Get.find<MapBoxController>();

  List<LocateModel> gates = [
    LocateModel(latLng: lt.LatLng(21.4881267, 39.2421271), name: "Eastern Gate 1"),
    LocateModel(latLng: lt.LatLng(21.4890973, 39.2415562), name: "North Gate 2"),
  ];
  List<LocateModel> transport = [
    LocateModel(latLng: lt.LatLng(21.4886052, 39.2403585), name: "3"),
    LocateModel(latLng: lt.LatLng(21.4883042, 39.2398941), name: "4"),
    LocateModel(latLng: lt.LatLng(21.4873084, 39.2421049), name: "12"),
  ];
  List<LocateModel> building = [
    LocateModel(latLng: lt.LatLng(21.4890841, 39.2414669), name: "the main Forum building 18"),
    LocateModel(latLng: lt.LatLng(21.4887587, 39.2404678), name: "Administration of security and safety The yellow building next to 22"),
    LocateModel(latLng: lt.LatLng(21.4884577, 39.2398254), name: "Childhood center nursery The yellow building between 27 and 56"),
    LocateModel(latLng: lt.LatLng(21.4879710, 39.2398418), name: "Faculty of arts and humanities Building  56"),
    LocateModel(latLng: lt.LatLng(21.4882621, 39.2402928), name: "Faculty of communication and media Building 3"),
    LocateModel(latLng: lt.LatLng(21.4883073, 39.2405020), name: "Lecture classrooms Building 4"),
    LocateModel(latLng: lt.LatLng(21.4884252, 39.2412744), name: "Faculty of law Building 2"),
    LocateModel(latLng: lt.LatLng(21.4881694, 39.2418816), name: "General administration Building 1"),
    LocateModel(latLng: lt.LatLng(21.4878989, 39.2420959), name: "Saudi post Building 28"),
    LocateModel(latLng: lt.LatLng(21.4880141, 39.2412537), name: "The female campus stage"),
    LocateModel(latLng: lt.LatLng(21.4873249, 39.2421737), name: "Medical department Building 17"),
  ];
}
