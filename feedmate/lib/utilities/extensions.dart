import 'dart:ui';

extension PageSlideDirectionExtension on int {
  Offset getPageSlideDirection(int currentIndex) {
    if (this == currentIndex) return Offset.zero;
    return this < currentIndex ? const Offset(-1, 0) : const Offset(1, 0);
  }
}
