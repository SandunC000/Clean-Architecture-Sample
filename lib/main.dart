import 'package:flutter/material.dart';
import 'package:full/features/presentation/views/pin_page/create_pin_page.dart';

import 'core/util/navigation_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreatePinPage(),
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

