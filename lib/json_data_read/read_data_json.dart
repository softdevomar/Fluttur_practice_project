import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
class read_data_json extends StatefulWidget {
  const read_data_json({Key? key}) : super(key: key);

  @override
  State<read_data_json> createState() => _read_data_jsonState();
}

class _read_data_jsonState extends State<read_data_json> {
  late List data;
  Future  LoadJsonData() async{
    var jsonText=await rootBundle.loadString("asset/data.json");
    setState((){
      data=json.decode(jsonText);
    });
    print(jsonText);
  }
  void initState(){
    this.LoadJsonData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json data read"),
      ),
      body: ListView.builder(
        itemCount: data.length,
          itemBuilder: (BuildContext context,int index){
          return ListTile(
            title: Text(data[index]["name"]),
            subtitle:Text(data[index]["email"]),

          );
          }),
    );
  }
}
