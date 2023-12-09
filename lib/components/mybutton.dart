import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String value;
  final Color bgColor;
  final Color textColor;

  const MyButton({
    super.key,
    required this.value,
    required this.bgColor,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('$value 눌렸음');
      },
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          child: Text(value,
            style: TextStyle(fontSize: 22, color: textColor,),
          ),
        ),
      ),
    );
  }
}