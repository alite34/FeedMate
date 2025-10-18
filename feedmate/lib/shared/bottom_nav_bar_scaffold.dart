// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:feedmate/utilities/assets.gen.dart';
import 'package:feedmate/utilities/extensions.dart';
import 'package:feedmate/shared/bottom_nav_bar_item.dart';

class BottomNavBarScaffold extends StatelessWidget {
  const BottomNavBarScaffold({
    required this.navigationShell,
    required this.branches,
    super.key,
  });

  final List<Widget> branches;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Stack(
          children: [
            Stack(
              children: branches.mapIndexed((index, child) {
                return AnimatedSlide(
                  offset: index.getPageSlideDirection(
                    navigationShell.currentIndex,
                  ),
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOutQuad,
                  child: IgnorePointer(
                    ignoring: index != navigationShell.currentIndex,
                    child: TickerMode(
                      enabled: index == navigationShell.currentIndex,
                      child: child,
                    ),
                  ),
                );
              }).toList(),
            ),

            Positioned.fill(
              bottom: 30,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(75),
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BottomNavBarItem(
                        iconPath: Assets.icons.food2.path,
                        isSelected: navigationShell.currentIndex == 0,
                        onPressed: () {
                          if (navigationShell.currentIndex != 0) {
                            navigationShell.goBranch(0);
                          }
                        },
                      ),

                      BottomNavBarItem(
                        iconPath: Assets.icons.vaccine2.path,
                        isSelected: navigationShell.currentIndex == 1,
                        onPressed: () {
                          if (navigationShell.currentIndex != 1) {
                            navigationShell.goBranch(1);
                          }
                        },
                      ),

                      BottomNavBarItem(
                        iconPath: Assets.icons.profile.path,
                        isSelected: navigationShell.currentIndex == 2,
                        onPressed: () {
                          if (navigationShell.currentIndex != 2) {
                            navigationShell.goBranch(2);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
