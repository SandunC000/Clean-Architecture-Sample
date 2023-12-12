import 'package:flutter/material.dart';
import 'package:full/core/util/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String page;
  final bool backArrow;
  final bool logOut;
  const MyAppBar({Key? key, required this.page, required this.backArrow, required this.logOut,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.indigo[900],
      automaticallyImplyLeading: backArrow,
      iconTheme: const IconThemeData(color: AppColors.appColorWhite),
      title: Text(
        page,
        style: const TextStyle(color: Colors.white),
      ),
      actions: [
        if (logOut)
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Handle logout button press
                  },
                ),
                const Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
