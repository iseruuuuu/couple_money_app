import 'package:flutter/material.dart';

class FloatingActionButtonItem extends StatelessWidget {
  const FloatingActionButtonItem({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () async {},
      icon: const Icon(
        Icons.add,
        size: 30,
        color: Colors.white,
      ),
      label: const Text(
        '給料を追加',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
