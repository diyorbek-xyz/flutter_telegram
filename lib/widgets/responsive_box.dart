import 'package:flutter/material.dart';

class WidgetResponsiveBox extends StatelessWidget {
  final Widget child;
  final double? width;
  const WidgetResponsiveBox({super.key, required this.child, this.width});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 600) {
      return SizedBox(width: width, child: child);
    } else {
      return Expanded(child: child);
    }
  }
}
