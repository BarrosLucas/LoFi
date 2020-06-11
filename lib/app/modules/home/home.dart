import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          _pageView()
        ],
      )
    );
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
    return PageView(
      children: <Widget>[
        Container(color: Color(0x00000000),),
        Container(color: Color(0xCC000FFF),)
      ],
    );
  }
}
