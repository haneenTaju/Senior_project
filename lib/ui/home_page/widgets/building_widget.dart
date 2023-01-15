import 'package:flutter/material.dart';

import '../../../widgets/outline_text.dart';

class BuildingMarker extends StatelessWidget {
  const BuildingMarker({
    super.key,
    required this.buildingName,
  });
  final String buildingName;

  @override
  Widget build(BuildContext context) {
    return OutlineText(text: buildingName);
  }
}
