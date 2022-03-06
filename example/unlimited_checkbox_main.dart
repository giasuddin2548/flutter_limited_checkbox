
import 'package:flutter/material.dart';
import 'package:flutter_limited_checkbox/flutter_limited_checkbox.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Unlimited Checkbox Selection'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List<FlutterSelectModel> mySingleValueList=[];
  List<FlutterSelectModel> mySelectedList=[];

  var limit=4;



  @override
  void initState() {
    mySingleValueList.add(FlutterSelectModel(isSelected: false,  selectTitle: 'Option-1', selectId: 1));
    mySingleValueList.add(FlutterSelectModel(isSelected: false,  selectTitle: 'Option-2', selectId: 2));
    mySingleValueList.add(FlutterSelectModel(isSelected: false,  selectTitle: 'Option-3', selectId: 3));
    mySingleValueList.add(FlutterSelectModel(isSelected: false,  selectTitle: 'Option-4', selectId: 4));
    mySingleValueList.add(FlutterSelectModel(isSelected: false,  selectTitle: 'Option-5', selectId: 5));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FlutterUnlimitedCheckbox(
        activeColor: Colors.red,
        unlimitedCheckList: mySingleValueList,
        onChanged: (List<FlutterSelectModel> list){
          mySelectedList.clear();
          mySelectedList=[...list];

          for (var element in mySelectedList) {
            print(element.selectTitle);
          }

        },
        titleTextStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal,),
        mainAxisAlignmentOfRow: MainAxisAlignment.start,
        crossAxisAlignmentOfRow: CrossAxisAlignment.center,
      ),

    );
  }
}
