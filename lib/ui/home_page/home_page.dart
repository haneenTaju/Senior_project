// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:kua_map/const_style/app_colors.dart';
import 'package:kua_map/const_style/map_box_auth.dart';
import 'package:kua_map/controllers/map_box_controller.dart';
import 'package:kua_map/ui/account_page/account_page.dart';
import 'package:kua_map/ui/add_location_page/add_location_page.dart';
import 'package:kua_map/ui/home_page/widgets/building_widget.dart';
import 'package:kua_map/ui/home_page/widgets/transport_widget.dart';
import 'package:kua_map/ui/nav_map/nav_map.dart';

import 'widgets/gates_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final locationController = TextEditingController();
  MapController myMapController = MapController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print(myMapController.center.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(myMapController.center);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.mainBlue),
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: locationController,
                cursorColor: AppColors.mainBlue,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Where are you going to?",
                ),
                onSubmitted: (value) {
                  setState(() {});
                },
              ),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.list),
            position: PopupMenuPosition.under,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.person_outline),
                      SizedBox(width: 8),
                      Text("View Account"),
                    ],
                  ),
                  value: 0,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 8),
                      Text("Add Location"),
                    ],
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.logout_rounded),
                      SizedBox(width: 8),
                      Text("Logout"),
                    ],
                  ),
                  value: 2,
                ),
              ];
            },
            onSelected: (page) {
              if (page == 0) {
                Get.to(() => AccountPage());
              }
              if (page == 1) {
                Get.to(() => AddLocationPage());
              }
              if (page == 2) {
                // print("object2");
              }
            },
          )
        ],
      ),
      body: Stack(
        children: [
          GetBuilder<MapBoxController>(
            builder: (controller) {
              return FlutterMap(
                mapController: myMapController,
                options: MapOptions(
                  minZoom: 5,
                  maxZoom: 18,
                  zoom: 15,
                  center: MyMapBox.myLocation,
                  rotation: 360,
                  keepAlive: true,
                  onPositionChanged: (position, hasGesture) {
                    // print(position.center.toString());
                    // print(hasGesture.toString());
                  },
                  onTap: (tapPosition, point) {
                    print(point.toString());
                    // setState(() {
                    // MyMapBox.myLocation = point;
                    // myMapController.move(point, 18);
                    // });
                  },
                ),
                children: [
                  TileLayer(
                    urlTemplate: MyMapBox.mapStyleId,
                    userAgentPackageName: "com.example.kua_map",
                    additionalOptions: {
                      'accessToken': MyMapBox.mapAccessTokenID,
                    },
                    errorTileCallback: (tile, error) {
                      // print(error.toString());
                      // print(tile.loadError);
                      Get.showSnackbar(GetSnackBar(
                        message: "Check Internet connection",
                      ));
                    },
                  ),

                  //*gates
                  MarkerLayer(
                    markers: controller.gates
                        .asMap()
                        .map(
                          (index, e) => MapEntry(
                            index,
                            Marker(
                              rotate: false,
                              point: e.latLng,
                              height: 90,
                              width: 60,
                              builder: (context) {
                                // print(e.name);
                                return GatesWidget(
                                  gateName: e.name,
                                );
                              },
                            ),
                          ),
                        )
                        .values
                        .toList(),
                  ),
                  //*Teanspot
                  MarkerLayer(
                    markers: controller.transport
                        .asMap()
                        .map(
                          (index, e) => MapEntry(
                            index,
                            Marker(
                              rotate: false,
                              point: e.latLng,
                              height: 60,
                              // width: 60,
                              builder: (context) {
                                // print(e.name);
                                return TransportWidget(stopName: e.name);
                              },
                            ),
                          ),
                        )
                        .values
                        .toList(),
                  ),
                  //*buildings

                  MarkerLayer(
                    // rotate: true,
                    markers: controller.building
                        .asMap()
                        .map(
                          (index, e) => MapEntry(
                            index,
                            Marker(
                              rotate: false,
                              point: e.latLng,
                              // height: 60,
                              width: 100,
                              builder: (context) {
                                // print(e.name);
                                return BuildingMarker(buildingName: e.name);
                              },
                            ),
                          ),
                        )
                        .values
                        .toList(),
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: MyMapBox.myLocation,
                        width: 40,
                        height: 40,
                        rotate: true,
                        // rotateAlignment: ,
                        builder: (context) => FlutterLogo(),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),

          //*
          // Align(alignment: Alignment.bottomCenter, child: KBtn(text: "text", onPress: () {}))
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.to(() => NavMapPage());
      //   },
      // ),
    );
  }
}
