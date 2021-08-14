import 'package:flutter/material.dart';

class MensListItem extends StatelessWidget {
  const MensListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'Mens',
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
