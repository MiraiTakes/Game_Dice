import 'package:flutter/material.dart';
import 'game.dart';
import 'rules.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 240, 245, 1),
        body: SafeArea(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Dice", style: TextStyle(fontSize: 70, fontStyle: FontStyle.italic),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen()));
                    }, child: Text("Новая игра", style: TextStyle(fontSize: 25),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RulesScreen()));
                    }, child: Text("Правила игры", style: TextStyle(fontSize: 25),)),
                  ),
                ],),
              ],
            ),
          ],
        )),
      ),
    );
  }
}