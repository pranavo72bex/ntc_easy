import 'package:flutter/material.dart';
import 'package:ntcservicecode/const/color_const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onpressed,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: accentcolor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
