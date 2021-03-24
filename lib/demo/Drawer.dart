import 'package:flutter/material.dart';

/*
 *这是抽屉组件的内容 
 */


class ShowData {
  String opration;
  Icon icon;
  ShowData(this.opration, this.icon);
}

List<ShowData> datas = [
  ShowData("设置", Icon(Icons.settings, color: Colors.black87, size: 22.0)),
  ShowData("我的", Icon(Icons.person, color: Colors.black87, size: 22.0)),
  ShowData("信息", Icon(Icons.message, color: Colors.black87, size: 22.0)),
  ShowData("时间", Icon(Icons.access_time_rounded, color: Colors.black87, size: 22.0)),
  ShowData("闹钟", Icon(Icons.access_alarms, color: Colors.black87, size: 22.0)),
  ShowData("退出", Icon(Icons.exit_to_app, color: Colors.black87, size: 22.0)),
];

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({Key key}) : super(key: key);

  List<Widget> _buildItem(context) {
    List<Widget> list = List();
    list.add(UserAccountsDrawerHeader(
      accountName: Text("ZengQingWen"),
      accountEmail: Text("3207390735@qq.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage("assets/user.jpg"),
      ),
    ));

    for (int i = 0; i < datas.length; i++) {
      var listItem = ListTile(
          title: Text(
            datas[i].opration,
            textAlign: TextAlign.left,
          ),
          trailing: datas[i].icon,
          onTap: () => Navigator.pop(context));
      list.add(listItem);
    }
    return list;
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: _buildItem(context),
      ),
    );
  }
}
