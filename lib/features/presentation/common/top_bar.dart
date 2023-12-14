import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {}, child: const Text('SERVICE', style: TextStyle(color: Colors.blue),)),
            const Text(
              '|',
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(onPressed: () {}, child: const Text('WOF', style: TextStyle(color: Colors.black))),
            const Text(
              '|',
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(onPressed: () {}, child: const Text('TYRES', style: TextStyle(color: Colors.black))),
            const Text(
              '|',
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(onPressed: () {}, child: const Text('FUEL', style: TextStyle(color: Colors.black))),
            const Text(
              '|',
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(onPressed: () {}, child: const Text('CHARGE', style: TextStyle(color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
