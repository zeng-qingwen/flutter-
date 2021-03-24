import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}




class _BottomNavigationBarWidgetState
    extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    print("hello");
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.black87,
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      items: [

        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "explore",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.history), 
          label: "history"
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.list), 
          label: "list"
        )
        
      ],
    );
  }
}
