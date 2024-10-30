import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/tab_widget_1.dart';
import 'package:flutter_application_1/components/tab_widget_2.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  List<Widget> _tabScreens = [TabWidget1(), TabWidget2()];

  get conts => null;
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    List<Widget> _tabLists = [
      const Tab(
        text: "Tab1",
        icon: Icon(Icons.call),
      ),
      const Tab(
        text: "Tab2",
        icon: Icon(Icons.pages),
      ),
    ];

    return DefaultTabController(
      length: _tabScreens.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          bottom: TabBar(tabs: _tabLists),
        ),
        body: TabBarView(children: _tabScreens),
      ),
    );
  }
}
