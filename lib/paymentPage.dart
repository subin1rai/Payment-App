import 'dart:ffi';

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
        padding: EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/paymentbackground.png'))),
        child: Column(children: [
          Container(
            width: double.maxFinite,
            height: h * 0.14,
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
          ),
          Text(
            "Paymnet is complete for 2 bills.",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: BillColor.idColor),
          ),
          SizedBox(height: h * 0.045),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12.0),
            child: Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(width: 2, color: Colors.grey.withOpacity(0.5))),
              child: MediaQuery.removeViewPadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (_,index){
                    return Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Column(children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15, left: 20),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green),
                            child: Icon(
                              Icons.done,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "KanGen Power",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "ID: 7830874",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: BillColor.idColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Text(
                                "",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "\$1248.00",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              
                            ],
                          ),
                         
                        ],
                      )
                    ,Divider(thickness: 2,)
                    ]),
                  );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: h*0.05,),
          Column(
            children: [
              Text("Total Amount",style: TextStyle(fontSize: 20,color: BillColor.idColor),),
              SizedBox(height: 10),
              Text("\$2840.00",style: TextStyle(fontSize: 30,color: BillColor.mainColor,fontWeight: FontWeight.w600),),
            ],
          )
        ]),
      ),
    );
  }
}
