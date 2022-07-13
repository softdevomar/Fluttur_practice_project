import 'package:flutter/material.dart';
class enable_desable extends StatefulWidget {
  const enable_desable({Key? key}) : super(key: key);

  @override
  State<enable_desable> createState() => _enable_desableState();
}

class _enable_desableState extends State<enable_desable> {
  bool isbuttonActive=true;
  late TextEditingController controlar;
  @override
  void initState() {
    controlar=TextEditingController();
    controlar.addListener(() {
      final  isbuttonActive=controlar.text.isNotEmpty;
      setState(()=>this.isbuttonActive=isbuttonActive );
    });
    super.initState();
  }
  @override
  void dispose() {
   controlar.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Enable and Desable"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              label: Text("name"),
              border: OutlineInputBorder(),
            ),
            controller: controlar,
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onSurface: Colors.blue,
            ),
              onPressed: isbuttonActive
                  ? (){
                   setState(()=>isbuttonActive=false);
                   controlar.clear();
                  }:null,
              child: Text("Buttton"))
        ],
      ),
    );
  }
}
