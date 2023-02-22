import 'package:flutter/material.dart';
import 'MyIcons/MyIcon.dart';
import 'colorSelecter/colorSelecter.dart';
import 'pages/homePage.dart';
import 'pages/req.dart';
import 'pages/med.dart';
import 'pages/user.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _home();
}

class _home extends State<home> {
  //底部导航选择
  int _selectedTab = 0;
  final List<Widget> pageList = [homePage(), req(), med(), user()];
  //appbar的leading
  final List<IconData> _appbarIcon = [
    MyIcon.home,
    MyIcon.req,
    MyIcon.yaopinshuju,
    MyIcon.user
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(_appbarIcon[_selectedTab], color: Colors.white),
        title: const Text("康康", style: TextStyle(color: Colors.white)),
        titleSpacing: 12,
        backgroundColor: HexColor("00966b"),
      ),
      body: pageList[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        backgroundColor: HexColor("00966b"),
        unselectedItemColor: Colors.white,
        selectedItemColor: HexColor('f4a124'),
        onTap: (value) {
          setState(() {
            _selectedTab = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(MyIcon.home), label: "主页"),
          BottomNavigationBarItem(icon: Icon(MyIcon.req), label: "测试"),
          BottomNavigationBarItem(
              icon: Icon(MyIcon.yaopinshuju), label: "用药查询"),
          BottomNavigationBarItem(icon: Icon(MyIcon.user), label: "我的"),
        ],
      ),
    );
  }
}
