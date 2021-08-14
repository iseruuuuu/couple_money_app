import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ManButtonItem extends StatelessWidget {
  final String text;
  final double textSize;
  final double iconSize;
  final Function() callback;

  const ManButtonItem({
    Key? key,
    required this.text,
    this.textSize = 28,
    this.iconSize = 28,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2,bottom: 2,right: 0,left: 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        height: 80,
        child: Theme(
          data: ThemeData(splashColor: Colors.white),
          child: Material(
            elevation: 0,
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius .circular(50),
                ),
                onPressed: callback,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.accessibility,
                      color: Colors.indigo,
                      size: iconSize,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: textSize,
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
