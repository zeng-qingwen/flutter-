import 'package:flutter/material.dart';
import 'demo/Drawer.dart';
import './demo/BottomNavigation.dart';
import './demo/TabBarView.dart';
import './demo/AppBar.dart';


void main() => runApp(MyApp());


//  定义MaterialApp的类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 去除debug条幅--------------------------------------------------------------------
      debugShowCheckedModeBanner: false,

      // app的主体部分--------------------------------------------------------------------
      // Scaffold设置页面的基本组件比如上顶部的appBar
      home:HomePage(),

      // 设置主体内容，包括颜色等--------------------------------------------------------------------
      theme: ThemeData(
        primaryColor: Colors.amber,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white54
      ),

    );
  }
}

//  app的主体内容
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(

        // 头部导航栏
        appBar:AppBarWidget,

        // 页面的主体内容
        body: TabBarViewWidget(),

        // 抽屉组件
        drawer: Drawerwidget(),

        bottomNavigationBar: BottomNavigationBarWidget(),
        
      )
      );
  }
}