import 'package:flutter/material.dart';
import 'package:paymentapp/component/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80,left: 20,right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/paymentbackground.png'))),
        child: Column(children: [

          Container(
            width: double.maxFinite,
            height: h*0.14,
             decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/success.png'))),
          ),
          Text(
                  "Success",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: BillColor.mainColor),
                ),Text(
                  "Paymnet is complete for 2 bills.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: BillColor.idColor),
                ),
        ]),
      ),
    );
  }
}
