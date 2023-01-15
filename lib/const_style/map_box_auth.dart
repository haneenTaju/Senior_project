// ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart' as lt;

class MyMapBox {
  static const String mapAccessTokenID = "pk.eyJ1Ijoic2VuaW9yLTIwMjMiLCJhIjoiY2xja2piajB1NnQ4MDNvcGp6OHU3amdhNiJ9.9-iWeKBvV0ikNG-kRgJG8A";
  static const String kuaMapAccessTokenId = "sk.eyJ1Ijoic2VuaW9yLTIwMjMiLCJhIjoiY2xjdnQ0MDJnMDR4dTN2cXJlenB0ZDYzYiJ9.OCKigCL-gDPkymabncMhxA";
  static const String mapStyleId = "https://api.mapbox.com/styles/v1/senior-2023/clclho403004e14qin4fy8c79/tiles/256/{z}/{x}/{y}@2x?access_token=$mapAccessTokenID";
  static lt.LatLng myLocation = lt.LatLng(21.4872088, 39.2410543);
  static lt.LatLng gete = lt.LatLng(21.4881267, 39.2421271);
}
