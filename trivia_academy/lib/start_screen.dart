import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 120.0),
          Image(image: AssetImage('lib/assets/logo.png'),),
          SizedBox(height: 1.0),
          Text("Trivia \n academy", 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 38, 
                fontWeight: FontWeight.w800,)),
          SizedBox(height: 40.0,
          ),
          FlatButton(onPressed: (){
            print('Começar');
          }, child: Text("Começar", style: TextStyle(fontSize: 35,
          fontWeight: FontWeight.w600),
          ),
          color: Colors.black87,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(
            20),
          ),
          padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
          ),
        ],
      ),
    );
  }
}