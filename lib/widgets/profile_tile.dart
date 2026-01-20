import 'package:flutter/material.dart';

class WidgetProfileTile extends StatelessWidget {
  final String avatar;
  final String name;
  final String message;
  const WidgetProfileTile({
    super.key,
    required this.avatar,
    required this.name,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    SnackBar snackBar = SnackBar(
      duration: Duration(milliseconds: 100),
      content: Text("Hello world!"),
    );
    return ListTile(
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(snackBar),
      splashColor: Color(0x40404060),
      hoverColor: Color(0x50505060),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontSize: 15)),
          Text(message, style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      leading: PhysicalShape(
        clipBehavior: Clip.antiAlias,
        clipper: ShapeBorderClipper(shape: CircleBorder()),
        color: Colors.transparent,
        child: Image(width: 50, height: 50, image: AssetImage(avatar)),
      ),
    );
  }
}
