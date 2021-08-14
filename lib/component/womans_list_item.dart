import 'package:flutter/material.dart';

class WomansListItem extends StatelessWidget {
  const WomansListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'Womans',
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
