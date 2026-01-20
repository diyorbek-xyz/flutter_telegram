import 'package:flutter/material.dart';
import 'package:telegram/datas/tabs.dart';

class WidgetNavigationDrawer extends StatefulWidget {
  const WidgetNavigationDrawer({super.key});
  @override
  State<StatefulWidget> createState() => _WidgetNavigationDrawerState();
}

class _WidgetNavigationDrawerState extends State<WidgetNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 260,
      shape: BeveledRectangleBorder(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              splashColor: Color(0x40404060),
              hoverColor: Color(0x50505060),
              onTap: () {},
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 100,
                  children: [
                    PhysicalShape(
                      clipBehavior: Clip.antiAlias,
                      clipper: ShapeBorderClipper(shape: CircleBorder()),
                      color: Colors.transparent,
                      child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage("assets/images/avatar.png"),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Diyorbek",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Set Emoji Status",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.blue.withValues(alpha: 0.4),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: Color(0xFF051020)),
            Wrap(

              children: personalTabs.asMap().entries.map((e) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  splashColor: Color(0x40404060),
                  hoverColor: Color(0x50505060),
                  title: Row(
                    spacing: 10,
                    children: [
                      Icon(tabs[e.key]["icon"]),
                      Text(
                        tabs[e.key]["title"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                );
              }).toList(),
            ),
            Divider(thickness: 1, color: Color(0xFF051020)),
            Wrap(
              children: tabs.asMap().entries.map((e) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  splashColor: Color(0x40404060),
                  hoverColor: Color(0x50505060),
                  title: Row(
                    spacing: 10,
                    children: [
                      Icon(tabs[e.key]["icon"]),
                      Text(
                        tabs[e.key]["title"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
