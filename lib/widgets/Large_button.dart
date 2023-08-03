import 'package:flutter/material.dart';
import 'package:paymentapp/component/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? background;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;
  const AppLargeButton({
    super.key,
    this.background = BillColor.mainColor,
    this.textColor,
    this.onTap,
    this.isBorder = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      margin: const EdgeInsets.only(left: 40,right: 0),
        height: 40,
        width: MediaQuery.of(context).size.width-80,
        decoration: BoxDecoration(
          color: background,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: BillColor.mainColor)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
