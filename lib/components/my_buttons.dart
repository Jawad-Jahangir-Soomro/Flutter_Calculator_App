import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {

  String title;
  Color color;
  VoidCallback onPress;

  MyButtons({Key? key, required this.title, this.color = Colors.grey, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(title,style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.normal)),
            ),
          ),
        ),
      ),
    );
  }
}
