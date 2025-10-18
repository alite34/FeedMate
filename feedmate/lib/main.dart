import 'package:feedmate/shared/bottom_nav_bar_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:feedmate/navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Feed Mate',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
