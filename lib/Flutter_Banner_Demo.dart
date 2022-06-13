import 'package:flutter/material.dart';
class Flutter_Banner_Demo extends StatefulWidget {
  const Flutter_Banner_Demo({Key? key}) : super(key: key);

  @override
  State<Flutter_Banner_Demo> createState() => _Flutter_Banner_DemoState();
}

class _Flutter_Banner_DemoState extends State<Flutter_Banner_Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_BAnner Debo"),
      ),
      body:const MaterialBanner(
        padding: EdgeInsets.all(20),
        content: Text('Hello, I am a Material Banner \n i am riponvideo'),
        leading: Icon(Icons.agriculture_outlined),
        backgroundColor: Colors.white,
        actions: <Widget>[
          TextButton(

            onPressed: null,
            child: Text('OPEN',style:TextStyle(color: Colors.blue),),
          ),
          TextButton(

            onPressed: null,
            child: Text('DISMISS',style:TextStyle(color: Colors.blue),),
          ),
        ],
      ),

    );
  }
}
