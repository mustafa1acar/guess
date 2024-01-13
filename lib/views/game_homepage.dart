import 'package:flutter/material.dart';
import 'package:guess_it/views/Profile.dart';
import 'package:guess_it/views/how_to_play.dart';
import 'package:guess_it/views/scoreboard.dart';


class GameHomePage extends StatefulWidget {
  const GameHomePage({Key? key}) : super(key: key);

  @override
  State<GameHomePage> createState() => _GameHomePageState();
}

class _GameHomePageState extends State<GameHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body:  Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         TextField(),
           Center(
             child: Column(
               children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    height: 55,
                    width: 135,
                    child: FilledButton.tonal(
                     style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(Colors.teal)
                     ),
                     onPressed: (){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>ScoreBoard()
                           ));
                     },
                     child: const Text('Play'),
                                     ),
                  ),
                 Container(

                   height: 55,
                   width: 135,
                   padding: EdgeInsets.all(2),
                   child: FilledButton.tonal(
                     style: ButtonStyle(

                         backgroundColor:
                         MaterialStatePropertyAll(Colors.purple.shade300)
                     ),
                     onPressed: (){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>ScoreBoard()
                           ));
                     },
                     child: const Text('My Games'),
                   ),
                 ),
                  Container(
                    height: 55,
                    width: 135,
                    padding: EdgeInsets.all(2),
                    child: FilledButton.tonal(
                     style: const ButtonStyle( backgroundColor:
                     MaterialStatePropertyAll(Colors.blue
                     )
                     ),
                     onPressed: (){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>ScoreBoard()
                       ));

                     },
                     child: const Text('Scoreboard'),
                                     ),
                  ),
               ],
             ),
           ),

          Container(
            padding: EdgeInsets.all(9),
            color: Colors.white,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                TextButton(
                    onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>HowPlay())
                      );
                    },
                    child: Text('How to play')),
                TextButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Settings())
                      );
                    },
                    child: Text('Settings'))

              ],
            ),
          )
        ],

      )),
    );
  }
}
