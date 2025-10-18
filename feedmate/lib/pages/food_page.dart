import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:feedmate/shared/water_level.dart';
import 'package:feedmate/utilities/assets.gen.dart';
import 'package:feedmate/utilities/extensions.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: context.mediaQuery.size.height,
        width: context.mediaQuery.size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),

              Text('Food', style: TextStyle(fontSize: 40)),
              SizedBox(height: 50),

              Center(
                child: Container(
                  height: context.mediaQuery.size.height * 0.20,
                  width: context.mediaQuery.size.height * 0.20,
                  clipBehavior: Clip.hardEdge,
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

                  child: Lottie.asset(
                    Assets.lottie.salad,
                    width: 100,
                    height: 100,
                    animate: true,
                    repeat: true,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              SizedBox(height: 75),
              Center(child: WaterLevel(percent: 25)),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
