// ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart' as lt;

class LocateModel {
  String name;
  lt.LatLng latLng;

  LocateModel({
    required this.latLng,
    required this.name,
  });
}
