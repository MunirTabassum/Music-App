import 'package:flutter/material.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';
import 'package:music_app/widgets/widgets.dart';

class AboutSettings extends StatelessWidget {
  const AboutSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: NamesOfAppBars(
          title: 'General',
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, right: 20, left: 12),
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(20, 20),
                  color: Colors.white,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 2.0),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.music_note_outlined,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xFF6D5CE8),
                      radius: 70,
                      // minRadius: 55,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'App version',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '4.3.2(214',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('Build date'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sun 10 aug 2021',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          ///
          Container(
            padding: EdgeInsets.only(top: 20, right: 20, left: 12),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(20, 20),
                  color: Colors.white,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.music_note_outlined,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.deepOrangeAccent,
                    radius: 30,
                    // minRadius: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Designed and developed by',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            'Ch Munir',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.facebook_outlined,
                                color: Colors.blueAccent.shade100,
                                size: 45,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.facebook_outlined,
                                color: Colors.tealAccent.shade100,
                                size: 45,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.facebook_outlined,
                                color: Colors.amberAccent.shade100,
                                size: 45,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Social links',
                  style: TextStyle(fontSize: 15),
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
                          color: Color(0xFFFAD510),
                          size: 60,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Telegram',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFFAD510),
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: Size(155.0, 150.0),
                      backgroundColor: Color(0xFFFEF8D8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
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
                          Icons.translate,
                          color: Color(0xFFFF3D00),
                          size: 60,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Translate',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFF3D00),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: Size(150.0, 150.0),
                      backgroundColor: Color(0xFFFFE1D7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
