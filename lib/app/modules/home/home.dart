import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final List<Tab> tabs = <Tab>[
    new Tab(text: "Timer"),
    new Tab(text: "Player"),
    new Tab(text: "Themes"),
    new Tab(text: "Favorites"),
    new Tab(text: "History"),
  ];
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: widget.tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return
      Stack(
      children: <Widget>[
        _background(),
        Scaffold(
          backgroundColor: Color(0x00000000),
          appBar: _appBar(),
          body: _pageView(),
        )
      ],
    ) ;
  }

  _background(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover
          )
      ),
    );
  }

  _pageView(){
    return TabBarView(
        controller: _tabController,
        children: widget.tabs.map((Tab tab) {
      return Center(
          child: new Text(
            tab.text,
            style: new TextStyle(
                fontSize: 20.0
            ),
          )
      );
    }).toList());
  }

  _appBar(){
    return AppBar(
      backgroundColor: Color(0x00000000),
      bottom: TabBar(
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: new BubbleTabIndicator(
          indicatorHeight: 40.0,
          indicatorRadius: 0,
          indicatorColor: Color(0x80FFFFFF),
          tabBarIndicatorSize: TabBarIndicatorSize.tab,
        ),
        tabs: widget.tabs,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.white,
        controller: _tabController,
        labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, fontFamily: "Quantico"),
      ),
      leading: Container(),
    );
  }
}

