import 'package:flutter/material.dart';
import 'package:flutter_game/screen/start.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 240, 245, 1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: 
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StartPage()));
                }, icon: Icon(Icons.arrow_back)),
              ],
            ),
            const Text("Как бросать кубик", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            const Text("Что бы бросить кубик нажмите на кнопку справа посередине экрана “Кинуть кубик”", style: TextStyle(fontSize: 20),),
            const Row(mainAxisAlignment: MainAxisAlignment.start,children: [Image(image: AssetImage('assets/kinytkybik.png')),],),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child:Text("Как поставить кубик на поле", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Text("Ваше поле с которым вы можете взаимодействовать находиться в нижней части экрана.", style: TextStyle(fontSize: 20),),
            const Row(mainAxisAlignment: MainAxisAlignment.start,children: [Image(image: AssetImage('assets/pole.png')),],),
            const Text("Что бы перенести кубик нажмите и удерживайте его, перенесите на ваше поле в лапку котику и отпустите.", style: TextStyle(fontSize: 20),),
            const Text("Как только вы отпустите кубик, свой ход сделает Бот.", style: TextStyle(fontSize: 20),),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child:Text("Очки и как они считаются", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Text("Сверху и снизу экрана находятся счетчики где считаются ваши очки и очки Бота. Снизу отображается ваш счет, сверху счет Бота.", style: TextStyle(fontSize: 20),),
            const Padding(
              padding: const EdgeInsets.only(top: 3),
              child:Text("Как заработать больше очков и выиграть.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              ),
            ),
            const Text("Очки даются за кубики которые вы переносите на свое поле, чем больше выпало число на кубике, тем больше у вас прибавиться очков. Также кубики могут суммироваться если правильно располагать их на поле. Если на поле по вертикали в одном столбце положить 2 кубика с одинаковыми гранями их грани умножаться тем самым дав вам преимущество.", style: TextStyle(fontSize: 20),),
            const Row(mainAxisAlignment: MainAxisAlignment.start,children: [Image(image: AssetImage('assets/2.png')),],),
            const Text("Если вы поставите кубики так, то это будет ровняться 25 очкам. Но если расположить так 3 кубика с одинаковыми гранями, они возведутся в 3 степень и дадут вам множество очков.", style: TextStyle(fontSize: 20),),
            const Row(mainAxisAlignment: MainAxisAlignment.start,children: [Image(image: AssetImage('assets/3.png')),],),
            const Text("При такой расстановке кубиков у вас уже будет 125 очков!", style: TextStyle(fontSize: 20),),
            const Padding(
              padding: const EdgeInsets.only(top: 8),
              child:Text("Важное правило игры", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Text("Не забывайте что Бот играет по таким же правилам что и вы.", style: TextStyle(fontSize: 20),),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child:Text("Приятной игры!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],),
        ),
        ),
      ),
    );
  }
}