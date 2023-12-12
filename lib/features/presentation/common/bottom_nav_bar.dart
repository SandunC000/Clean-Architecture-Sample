import 'package:flutter/material.dart';

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
    );
  }
}
