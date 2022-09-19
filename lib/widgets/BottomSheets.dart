import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:music_app/Screenss/Screenss.dart';

class BottomApp extends StatefulWidget {
  BottomApp({
    Key? key,
  }) : super(key: key);

  @override
  _BottomAppState createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  final storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Container(
          height: 230,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      minRadius: 28,
                      backgroundColor: Colors.red.shade300,
                      foregroundColor: Colors.black,
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            UpdateName(
                              onupdate: (name) {
                                if (name.isNotEmpty) {
                                  this.setState(() {
                                    storage.write('name', name);
                                    Navigator.pop(context);
                                  });
                                } else {
                                  Get.snackbar(
                                    'NameError',
                                    'Fill The Text Field',
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                  storage.read(name);
                                }
                              },
                            ),
                          );
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(storage.read('name') ?? '',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24,
                                          color: Colors.black)),
                                  Icon(
                                    Icons.edit,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    // Get.to(SettingScreen());
                    // Get.to(() => SettingScreen());
                    Get.to(FactoryScreen());
                  },
                ),
                ListTile(
                  title: Text('Equalizer'),
                  leading: Icon(Icons.equalizer_outlined),
                ),
              ],
            ),
          ),
        );
      },
      onClosing: () {},
    );
  }
}
//Code of updateBottomSheetDialogue

class UpdateName extends StatelessWidget {
  UpdateName({Key? key, required this.onupdate}) : super(key: key);
  final _formkey = GlobalKey<FormState>();
  final text = TextEditingController();
  var name = '';
  final void Function(String index)? onupdate;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Container(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    'Enter your name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formkey,
                  child: TextFormField(
                    controller: text,
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        // hintText: 'enter your name',
                        fillColor: Colors.grey,
                        labelText: 'Enter your name',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade500,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          onupdate!(name);
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple.shade500),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      onClosing: () {},
    );
  }
}
