import 'package:flutter/material.dart';
import 'package:practice_project/data_model.dart';
List<list_list> all_data(){
  List<list_list> list=<list_list>[];

  list_list alldata=new list_list();
  alldata.num="24";
  alldata.text="hellwo";
  list.add(alldata);

 alldata= list_list();
  alldata.num="67";
  alldata.text="hellwo";
  list.add(alldata);




  return list;
}