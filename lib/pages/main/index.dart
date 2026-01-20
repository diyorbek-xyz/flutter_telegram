import 'package:flutter/material.dart';
import 'package:telegram/widgets/app_bar.dart';
import 'package:telegram/widgets/navigation_drawer.dart';
import 'package:telegram/widgets/profile_tile.dart';
import 'package:telegram/widgets/responsive_box.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          drawer: WidgetNavigationDrawer(),
          body: Row(
            children: [
              WidgetResponsiveBox(
                width: 300,
                child: Column(
                  children: [
                    WidgetAppBar(),
                    TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      dividerHeight: 1,
                      dividerColor: Color(0xFF051020),
                      tabs: [
                        Tab(
                          height: 30,
                          child: Text("Home", style: TextStyle(fontSize: 12)),
                        ),
                        Tab(
                          height: 30,
                          child: Text("Home", style: TextStyle(fontSize: 12)),
                        ),
                        Tab(
                          height: 30,
                          child: Text("Home", style: TextStyle(fontSize: 12)),
                        ),
                        Tab(
                          height: 30,
                          child: Text("Home", style: TextStyle(fontSize: 12)),
                        ),
                        Tab(
                          height: 30,
                          child: Text("Home", style: TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView(
                            children: [
                              WidgetProfileTile(
                                avatar: "assets/images/avatar.png",
                                name: "Group",
                                message: "Diyorbek: Hello world!",
                              ),
                              WidgetProfileTile(
                                avatar: "assets/images/avatar.png",
                                name: "Group",
                                message: "Diyorbek: Hello world!",
                              ),
                              WidgetProfileTile(
                                avatar: "assets/images/avatar.png",
                                name: "Group",
                                message: "Diyorbek: Hello world!",
                              ),
                            ],
                          ),
                          Container(color: Colors.red),
                          Container(color: Colors.blue),
                          Container(color: Colors.red),
                          Container(color: Colors.green),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (screenWidth > 600)
                Expanded(flex: 5, child: Container(color: Colors.amber)),
            ],
          ),
        ),
      ),
    );
  }
}
