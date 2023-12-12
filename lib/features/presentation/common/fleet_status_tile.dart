import 'package:flutter/material.dart';

class FleetStatusTile extends StatelessWidget {
  final String label;
  final int count;

  const FleetStatusTile({super.key, required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    Color? color;

    if (count == 1 || count == 2) {
      color = Colors.orange[700];
    } else if (count >= 3) {
      color = Colors.red[700];
    }

    iconTile() {
      return Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Icon(
              Icons.thumb_up_alt_outlined,
              size: 35,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      );
    }

    textTile() {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              count.toString(),
              style: TextStyle(
                  color: color, fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      );
    }

    Widget buildTile() {
      return Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(5),
        ),
        child: count == 0 ? iconTile() : textTile(),
      );
    }

    return buildTile();
  }
}
