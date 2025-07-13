import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage>   createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoPage> {

  TextEditingController myContoller=TextEditingController();
  TextEditingController myContoller2=TextEditingController();

  void _login(){
    if(myContoller.text=="Marwan1X_1" && myContoller2.text=="AZERTYUIOP1234567890"){
      Navigator.pushNamed(context, '/WelcomePage');
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Wrong username or password")),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFF6200EE),
        title: Text(
          "Login,Page!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu,color: Colors.white,),
        actions: [
          ElevatedButton(
              onPressed: (){
                SystemNavigator.pop();
              },
              child: Icon(Icons.exit_to_app, color: Colors.white,),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF6200EE),
              ),
          )

        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome To Your World!",
                style: TextStyle(color: Color(0xFF333333), fontSize: 24,fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 30), // space between text and first TextField

              TextField(
                controller: myContoller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFF6200EE))
                  ),
                  hintText: "Enter username",
                  hintStyle: TextStyle(
                      color: Color(0xFF9E9E9E),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),

              SizedBox(height: 30,),

              TextField(
                controller: myContoller2 ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color(0xFF6200EE))
                  ),
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                    color: Color(0xFF9E9E9E),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),

              SizedBox(height: 30,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6200EE),
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                  onPressed: _login,
                  child: Text(
                      "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
