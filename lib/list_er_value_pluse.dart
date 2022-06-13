import 'package:flutter/material.dart';
import 'package:practice_project/data_model.dart';
import 'package:practice_project/list.dart';
import 'dart:convert';
class List_er_value_pluse extends StatefulWidget {
  const List_er_value_pluse({Key? key}) : super(key: key);

  @override
  State<List_er_value_pluse> createState() => _List_er_value_pluseState();
}

class _List_er_value_pluseState extends State<List_er_value_pluse> {
  List <list_list> practiceusers=[];
  void initState() {
    // TODO: implement initState
    super.initState();
    practiceusers = all_data();
  }
  double totalprice(){
    double total=0;
    practiceusers.forEach((value){
       total += double.parse(value.num!);
    });
    return total;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${totalprice().toString()}"),
      ),

    );
  }
}
