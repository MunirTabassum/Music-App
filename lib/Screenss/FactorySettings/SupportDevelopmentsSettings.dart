import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/widgets/widgets.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';

class SupportDeveleopmentSettings extends StatelessWidget {
  const SupportDeveleopmentSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: NamesOfAppBars(
            title: 'Support Development',
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 35, left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Thank you for using pulse Music',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                    child: Text(
                      'It takes a lot of time and effort to deliever quality products,that too for free',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                    child: Text(
                      'You can make a donation to support the development and help us improve the app,or just to show you appreciate our work',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                    child: Text(
                      '5-star ratings and reviews are also a way to support the project and development',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Support us',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Expanded(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.star_outline_rounded,
                            color: Color(0xFF02C753),
                            size: 60,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Rate us 5 stars',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF02C753),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: Size(150.0, 160.0),
                        backgroundColor: Color(0xFFD7F6E6),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.coffee_rounded,
                            color: Color(0xFFFFAB00),
                            size: 60,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Buy me a Cofee',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFAB00),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: Size(150.0, 160.0),
                        backgroundColor: Color(0xFFFFF2D8),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
