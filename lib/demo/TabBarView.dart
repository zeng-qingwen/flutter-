import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist,size: 128.0,color: Colors.black12,),
            Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
            Icon(Icons.directions_bike,size: 128.0,color: Colors.black12,)
          ],
        );
  }
}

