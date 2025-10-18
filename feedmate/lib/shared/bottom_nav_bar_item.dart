import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    required this.iconPath,
    required this.onPressed,
    required this.isSelected,
    this.size,
    super.key,
  });

  final void Function() onPressed;
  final bool isSelected;
  final String iconPath;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? Colors.red.withAlpha(50) : Colors.transparent,
        ),
        padding: EdgeInsets.only(right: 10, left: 12),
        width: size ?? 60,
        height: size ?? 60,
        child: Image.asset(iconPath, height: size ?? 60, width: size ?? 60),
      ),
    );
  }
}
