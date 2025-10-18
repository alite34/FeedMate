import 'package:flutter/material.dart';

extension PageSlideDirectionExtension on int {
  Offset getPageSlideDirection(int currentIndex) {
    if (this == currentIndex) return Offset.zero;
    return this < currentIndex ? const Offset(-1, 0) : const Offset(1, 0);
  }
}

extension BuildContextExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  NavigatorState get navigator => Navigator.of(this);
  FocusScopeNode get focusScope => FocusScope.of(this);
  OverlayState get overlay => Overlay.of(this);
  ScaffoldState get scaffold => Scaffold.of(this);
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
}
