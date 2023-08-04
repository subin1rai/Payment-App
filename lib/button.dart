import 'package:flutter/material.dart';
import 'package:paymentapp/component/colors.dart';

class AppButtonds extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Color? background;
  final Color? iconColor;
  final Color? textColor;
  final Function()? onTap;
  final String? text;
  const AppButtonds(
      {super.key,
      this.fontSize = 20,
      required this.icon,
      this.text,
      this.iconColor = Colors.white,
      this.onTap,
      this.background = BillColor.mainColor,
      this.textColor = const Color.fromARGB(255, 255, 255, 255)});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
                ,color: background,
              ),
              child: Icon(icon,size:30,color:iconColor),
            ),
            text!=null?Text(text!,style: TextStyle(fontSize: 14,color: textColor),):Container()
          ],
        ),
        );
  }
}
