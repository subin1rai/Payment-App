import 'package:flutter/material.dart';
import 'package:paymentapp/button.dart';
import 'package:paymentapp/component/colors.dart';
import 'package:paymentapp/widgets/Large_button.dart';
import 'package:paymentapp/widgets/Texted.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: BillColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _roundButton(),
        ],
      ),
    );
  }

  _mainBackground() {
    return Positioned(
        bottom: 10,
        // left: 0,
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/background.png'))),
        ));
  }

  _curveImageContainer() {
    return Positioned(
        right: -2,
        left: 0,
        bottom: 10,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/curve.png'))),
        ));
  }

  _roundButton() {
    return Positioned(
        bottom: 10,
        right: 50,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 240,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Container(
                              color: Color(0xFFeef1f4).withOpacity(0.7),
                              height: MediaQuery.of(context).size.height - 300,
                              width: MediaQuery.of(context).size.width,
                            )),
                        Positioned(
                            right: 50,
                            child: Container(
                              margin: EdgeInsets.only(),
                              height: 250,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(29),
                                  color: BillColor.mainColor),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppButtonds(
                                    icon: Icons.cancel,
                                    iconColor: BillColor.mainColor,
                                    background: Colors.white,
                                    onTap: (){Navigator.pop(context);},
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  );
                });
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      offset: Offset(0, 1),
                      color: Color(0xFF11324d).withOpacity(0.2))
                ],
                image: DecorationImage(
                    image: AssetImage(
                  'assets/lines.png',
                ))),
          ),
        ));
  }

  _listBills() {
    return Positioned(
        top: 320,
        bottom: 0,
        left: 0,
        right: 0,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.only(top: 20, right: 20),
                height: 130,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          offset: Offset(1, 1),
                          color: Color(0xFFd8dbe0),
                          spreadRadius: 10)
                    ],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(10))),
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 3, color: Colors.deepPurple),
                                    image: DecorationImage(
                                        image: AssetImage(
                                      'assets/brand1.png',
                                    ))),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'KenGen Power',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: BillColor.mainColor),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'ID: 948573',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: BillColor.idColor),
                                  )
                                ],
                              ),
                            ],
                          ),
                          TextSized(
                              text: "Auto Pay on 24th May 18",
                              color: BillColor.green),
                          SizedBox(height: 5)
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green[300]),
                                child: Center(
                                    child: Text(
                                  'Select',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                              Expanded(child: Container()),
                              Text(
                                '\$1248.00',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: BillColor.mainColor),
                              ),
                              Text(
                                'Due in 3 days',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: BillColor.idColor),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 35,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                color: BillColor.halfOval),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }

  _payButton() {
    return Positioned(
      bottom: 10,
      child: AppLargeButton(
        text: "Pay all Bills",
      ),
    );
  }
}
