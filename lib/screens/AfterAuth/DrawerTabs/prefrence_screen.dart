import 'package:flutter/material.dart';
import 'dart:io';
import 'package:intl/intl.dart';

import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import '../tabs_screen.dart';

class PrefrenceScreen extends StatefulWidget {
  static const routeName = "/prefrence";

  @override
  _PrefrenceScreenState createState() => _PrefrenceScreenState();
}

class _PrefrenceScreenState extends State<PrefrenceScreen> {
//Trying 2nd Way
  final TextEditingController _countiresController =
      new TextEditingController();
  final TextEditingController _jobsController = new TextEditingController();

  DateTime selectedDate = DateTime.now();

  TextEditingController _date = new TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    print(selectedDate);
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;

        _date.value = TextEditingValue(text: DateFormat.yMd().format(picked));
      });
  }

  //------------- Image Picker Coding ---------------
  File _image;

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

//============= Dropdown Menues List==================
  var countries = [
    'Pakistan',
    'Turkey',
    'United Kingdom',
    'United State',
    'India',
    'China'
  ];

  var jobs = [
    'Job 1',
    'Job 2',
    'Job 3',
    'Job 4',
    'Job 5',
    'Job 6',
  ];

  var bornin = [
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
    '2010',
    '2009',
    '2008',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft, child: TabsScreen()));
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey[300],
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: _image == null
                                ? AssetImage("assets/images/icons/myimg.jpg")
                                : FileImage(_image),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: 120,
                      child: RaisedButton(
                          child: Text("Choose"),
                          textColor: Colors.white,
                          color: Colors.black54,
                          onPressed: () {
                            _showPicker(context);
                          }),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 85,
                          child: Text(
                            "Email: ",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            child: TextField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          width: 85,
                          child: Text(
                            "Country: ",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.all(
                                Radius.circular(3.0),
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    controller: _countiresController,
                                    readOnly: true,
                                    enableInteractiveSelection: true,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15,
                                            bottom: 11,
                                            top: 11,
                                            right: 15),
                                        hintText: "Choose"),
                                  ),
                                ),
                                PopupMenuButton<String>(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  onSelected: (String value) {
                                    _countiresController.text = value;
                                  },
                                  itemBuilder: (BuildContext context) {
                                    return countries.map<PopupMenuItem<String>>(
                                        (String value) {
                                      return PopupMenuItem(
                                          child: Text(value), value: value);
                                    }).toList();
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          width: 85,
                          child: Text(
                            "Job: ",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.all(
                                Radius.circular(3.0),
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    controller: _jobsController,
                                    readOnly: true,
                                    enableInteractiveSelection: true,
                                    decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15,
                                            bottom: 11,
                                            top: 11,
                                            right: 15),
                                        hintText: "Choose"),
                                  ),
                                ),
                                PopupMenuButton<String>(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  onSelected: (String value) {
                                    _jobsController.text = value;
                                  },
                                  itemBuilder: (BuildContext context) {
                                    return jobs.map<PopupMenuItem<String>>(
                                        (String value) {
                                      return PopupMenuItem(
                                          child: Text(value), value: value);
                                    }).toList();
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          width: 85,
                          child: Text(
                            "Birthdate: ",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => _selectDate(context),
                            child: AbsorbPointer(
                              child: Container(
                                height: 50,
                                child: TextFormField(
                                  controller: _date,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    hintText: 'Date of Birth',
                                    isDense: true,
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 150,
                      child: RaisedButton(
                        child: Text("Disconnect"),
                        textColor: Colors.white,
                        color: Color.fromRGBO(250, 116, 112, 1),
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed("/");
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
