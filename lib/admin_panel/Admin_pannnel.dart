import 'package:flutter/material.dart';

import 'package:practice_project/admin_panel/Stactic_variable.dart';
class Admin_pannel extends StatelessWidget {
  @override



  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.orange])),
      child: Scaffold(

          backgroundColor: Colors.transparent,
          drawer: Drawer(
            backgroundColor: Colors.transparent,
            child: ListView(

              padding: EdgeInsets.zero,
              children: [

                Divider(height: 70,),
                // ListTile(
                //   title: const Text('About',style: TextStyle(color: Colors.white),),
                //   onTap: () {
                //   },
                // ),
                // ListTile(
                //   title: const Text('Contact',style: TextStyle(color: Colors.white)),
                //   onTap: () {
                //     // Update the state of the app.
                //     // ...
                //   },
                // ),
                // ListTile(
                //   title: const Text('Rate Us',style: TextStyle(color: Colors.white)),
                //   onTap: () {
                //     // Update the state of the app.
                //     // ...
                //   },
                // ),
                // ListTile(
                //   title: const Text('Shere App',style: TextStyle(color: Colors.white)),
                //   onTap: () {
                //     // Update the state of the app.
                //     // ...
                //   },
                // ),
                _drawerBuilder('About CSE'),
                Divider(),
                _drawerBuilder('Academic Support'),
                Divider(),
                _drawerBuilder('Photo Gallery'),
                Divider(),
                _drawerBuilder('History'),
                Divider(),
                _drawerBuilder('Contract Us'),
                Divider(),
                _drawerBuilder('Syllabus'),
                Divider(),
                _drawerBuilder('About'),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("Welcome to Admin pannel"),

          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                    itemCount: Static_variablee.BrandName.length,
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 200,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      childAspectRatio: 100,
                    ),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),

                    itemBuilder: (BuildContext context,int index){
                      return InkWell(

                        onTap: (){
                          if(index==0){

                          }
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrangeAccent,

                          ),
                          child:Padding(
                                  padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Divider(height: 30,),
                                    Icon(
                                      index==0?Icons.speed :
                                      index==1?Icons.ballot_outlined :
                                      index==2?Icons.account_circle_outlined :
                                      Icons.shopping_cart_outlined,color: Colors.white,),
                                    Divider(),
                                    Text("${Static_variablee.BrandName[index]}",style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                              )

                        )
                      );
                    }),

              ],
            ),
          ),
      ),
    );
  }
  Widget _drawerBuilder(String text){
    return ListTile(
      onTap: () {
        if(text=='About CSE'){
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) =>AboutCse ()));
        }
        else if(text=='Academic Support'){
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => AcademicSupport()));
        }
        else if(text=='Syllabus'){
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) =>SylabusClass ()));
        }
        else if(text=='Photo Gallery'){
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => PhotoGallery()));
        }
        else if(text=='History'){
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => HistoryClass()));
        }
        else if(text=='Contract Us'){
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) =>ContractUsClass ()));
        }
        else{
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => About()));
        }

      },
      leading: Icon(
        text=='About CSE'?Icons.speed :
        text=='Academic Support'?Icons.speed :
        text=='Syllabus'?Icons.speed :
        text=='Photo Gallery'?Icons.speed :
        text=='Contract Us'?Icons.speed :
        text=='History'?Icons.speed :

        Icons.arrow_forward_ios,color: Colors.white,),
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
      ),
    );
  }
}