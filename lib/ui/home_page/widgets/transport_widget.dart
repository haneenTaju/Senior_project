import 'package:flutter/material.dart';

import '../../../widgets/outline_text.dart';

class TransportWidget extends StatelessWidget {
  const TransportWidget({super.key, required this.stopName});
  final String stopName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Center(
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        OutlineText(
          text: stopName,
          color: Colors.green,
        ),
      ],
    );
  }
}
