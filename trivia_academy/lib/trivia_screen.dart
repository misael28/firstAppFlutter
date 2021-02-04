import "package:flutter/material.dart";

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {

  int answer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text('Trivia Scores'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PERGUNTA 1:', style: TextStyle(fontSize: 18),),
                SizedBox(height: 16,),
                Text('O que é Flutter?', style: TextStyle(fontSize: 18),),
              ],
            ),
          ),
          Expanded(child: ListView(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(1,3),
                  ),],
                  ),
                  child: RadioListTile(
                    value: 1,
                    groupValue: answer,
                    title: Text('É um framework da Google'),
                    onChanged: (int value){
                      setState(() {
                        answer=value;  
                      });
                    },
                  ), 
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(1,3),
                  ),],
                  ),
                  child: RadioListTile(
                    value: 2,
                    groupValue: answer,
                    title: Text('É um novo sistema operacional'),
                    onChanged: (int value){
                      setState(() {
                        answer=value;  
                      });
                    },
                  ), 
              )
            ],
          ),
          ),
        ], 
      ),
    );
  }
}