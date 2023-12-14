import 'package:flutter/material.dart';
import 'package:full/features/presentation/common/bottom_nav_bar.dart';
import 'package:full/features/presentation/common/drop_down.dart';
import 'package:full/features/presentation/common/top_bar.dart';
import 'package:full/core/services/map_service.dart';
import 'package:full/features/presentation/common/details.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: const Text(
          'Supplier Directory',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Stack(
        children: [
          MapService(),
          TopBar(),
          CustomDropdown(),
          Details(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
