import 'package:flutter/material.dart';

import '../../../core/util/navigation_routes.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.map_outlined,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.fact_check_rounded,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_sharp,
              color: Colors.black,
            ),
            label: ''),
      ],
      iconSize: 30,
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, Routes.DASHBOARD);
            break;
          case 1:
            Navigator.pushNamed(context, Routes.MENU);
            break;
          // case 2:
          //   Navigator.pushNamed(context, Routes.MENU);
          //   break;
          case 3:
            Navigator.pushNamed(context, Routes.PROFILE);
            break;

        }
      },
    );
  }
}
