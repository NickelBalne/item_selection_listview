import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double padValue = 0;

  List<SlideSelectListViewDataModel> slideSelectableListViewDataSource = <SlideSelectListViewDataModel>[
    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

    SlideSelectListViewDataModel('Given by Others'),
    SlideSelectListViewDataModel('Given on Due Date'),
    SlideSelectListViewDataModel('Patient Refused'),
    SlideSelectListViewDataModel('Missed by Patient'),
    SlideSelectListViewDataModel('Not Applicable'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selectable-ListView")),
      body: ListView(
        children: List.generate(slideSelectableListViewDataSource.length, (index) {
          return ListTile(
            onTap: (){
              setState(() {
//              if (index == 0 || index == 1){
                slideSelectableListViewDataSource[index].selected = !slideSelectableListViewDataSource[index].selected;
//                slideSelectableListViewDataSource[2].selected = false;
//                slideSelectableListViewDataSource[3].selected = false;
//                slideSelectableListViewDataSource[4].selected = false;
//              }else{
//                slideSelectableListViewDataSource[index].selected = !slideSelectableListViewDataSource[index].selected;
//                slideSelectableListViewDataSource[0].selected = false;
//                slideSelectableListViewDataSource[1].selected = false;
//              }

              });
            },
            selected: slideSelectableListViewDataSource[index].selected,
            title: Text(slideSelectableListViewDataSource[index].title.toString()),
            trailing: (slideSelectableListViewDataSource[index].selected) ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank),
          );
        }),
      ),
    );
  }
}

class SlideSelectListViewDataModel {
  final String title;
  bool selected = false;

  SlideSelectListViewDataModel(this.title);
}