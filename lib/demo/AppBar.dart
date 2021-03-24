import 'package:flutter/material.dart';
  AppBar AppBarWidget  =   AppBar(
          title: Text('学习flutter'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "搜索",
              onPressed: ()=>debugPrint("搜索被点击"),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: "更多",
              onPressed: ()=>debugPrint("更多被点击"),
            ), 
          ],

          elevation: 6.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black12,
            indicatorColor: Colors.black54,
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          )
        );