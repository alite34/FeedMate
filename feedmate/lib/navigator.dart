import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:feedmate/pages/care_page.dart';
import 'package:feedmate/pages/food_page.dart';
import 'package:feedmate/utilities/routes.dart';
import 'package:feedmate/pages/profile_page.dart';
import 'package:feedmate/shared/bottom_nav_bar_scaffold.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: Routes.food,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BottomNavBarScaffold(
            navigationShell: navigationShell,
            branches: const [FoodPage(), CarePage(), ProfilePage()],
          );
        },

        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.food,
                builder: (context, state) => const FoodPage(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.care,
                builder: (context, state) => const CarePage(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.profile,
                builder: (context, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
