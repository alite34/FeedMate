import 'package:flutter/material.dart';
import 'package:feedmate/utilities/extensions.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class WaterLevel extends StatelessWidget {
  const WaterLevel({super.key, required this.percent});

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mediaQuery.size.height * 0.20,
      width: context.mediaQuery.size.height * 0.20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(75),
            blurRadius: 20,
            spreadRadius: 4,
            offset: Offset(0, 5),
          ),
        ],
      ),

      child: LiquidCircularProgressIndicator(
        value: percent / 100,
        valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
        backgroundColor: Colors.white,
        borderColor: Colors.black.withAlpha(10),
        borderWidth: 1.0,
        direction: Axis.horizontal,
        center: Text('%$percent', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
