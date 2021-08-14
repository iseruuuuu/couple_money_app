import 'package:flutter/material.dart';

class WomansListItem extends StatelessWidget {
  const WomansListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width / 2.3,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Womans',
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
