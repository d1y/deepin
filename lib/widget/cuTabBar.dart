import 'package:flutter/cupertino.dart';

class CuTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.lab_flask),
          label: "论坛",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search),
          label: "搜索帖子",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.app),
          label: "星火商店",
        ),
      ],
    );
  }
}
