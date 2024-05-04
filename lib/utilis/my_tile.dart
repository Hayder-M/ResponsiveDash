import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      margin: const EdgeInsets.all(8.0),
      height: 80,
    );
  }
}
