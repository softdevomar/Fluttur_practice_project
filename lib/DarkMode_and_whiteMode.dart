import 'package:flutter/material.dart';
class DarkMOde_and_whiteMode extends StatefulWidget {
  const DarkMOde_and_whiteMode({Key? key}) : super(key: key);

  @override
  State<DarkMOde_and_whiteMode> createState() => _DarkMOde_and_whiteModeState();
}

class _DarkMOde_and_whiteModeState extends State<DarkMOde_and_whiteMode> {
  List<bool> _isSelected = [false, true, false];
  Color? bgColor;
  Color? textColor;
  bool darkMode = false;
  Color? bo;

  void DarkModeToggle(){
    setState(() {
      darkMode = !darkMode;
      if(darkMode){
        bgColor = Colors.black;
        textColor = Colors.white;
      }
      else{
        bgColor = Colors.white;
        textColor = Colors.black;
      }
    });
  }
  void DarkModeToggl(){
    setState(() {
      darkMode = !darkMode;
      if(darkMode){
        bgColor = Colors.purple;
        textColor = Colors.blue;
      }
      else{
        bgColor = Colors.pink;
        textColor = Colors.green;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:bgColor ,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text("Dark Mode and white mode",style: TextStyle(color:textColor ),),
        actions: [
          IconButton(
            color: textColor,
              onPressed: DarkModeToggle, icon:Icon(Icons.nightlight_round))
        ],
        
      ),
      body: Center(
        child:  ToggleButtons(
          children: <Widget>[
            Icon(Icons.reddit),
            Icon(Icons.wifi),
            Icon(Icons.flash_on),
          ],
          isSelected: _isSelected,
          onPressed: (int index) async{
             DarkModeToggl();
            setState(() {
              _isSelected[index] = !_isSelected[index];
            });
          },
          // region example 1
          color: Colors.grey,
          selectedColor: Colors.red,
          fillColor: Colors.lightBlueAccent,
          // endregion
          // region example 2
          borderColor: Colors.lightBlueAccent,
          selectedBorderColor: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          // endregion
        ),
      ),
    );
  }
}
