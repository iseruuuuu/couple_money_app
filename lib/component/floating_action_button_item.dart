import 'package:flutter/material.dart';

class FloatingActionButtonItem extends StatelessWidget {
  const FloatingActionButtonItem({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.3,
      height: 80,
      child: FloatingActionButton.extended(
        onPressed: () async {},
        icon: const Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
        label: const Text(
          '給料を追加',
          style: TextStyle(
            fontSize: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
