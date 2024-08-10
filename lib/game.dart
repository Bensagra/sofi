import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}
Color color1 = Color.fromARGB(255, 153, 19, 19) as Color;
Color color2 = Color.fromARGB(255, 14, 48, 99) as Color;


 
 
double elevation1 = 20;
double elevation2 = 20;
class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   
    
    return Scaffold(
     
      body: SafeArea(child: 
      Container(color: Colors.purple[400], width: size.width, height: size.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
          GestureDetector(onTap: () async => {
            if(color2 !=   Color.fromARGB(255, 18, 129, 255) as Color){
             color1 = const Color.fromARGB(255, 248, 4, 0) as Color,
             elevation1 = 0,

            setState(() {
             
              
            }),
            await Future.delayed(Duration(seconds: 3), () => {
              color1 = Colors.red[900] as Color,
              elevation1 = 20,
              setState(() {
                
              })
            })
                }
            
          },child: Container(width: size.width*.45, height: size.width*.45,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(200)),child: Material(borderRadius: BorderRadius.circular(200),color: Colors.transparent,elevation: 
          elevation1,child: Container(width: size.width*.35, height:size.width*.35, decoration:  BoxDecoration(borderRadius: BorderRadius.circular(200),color: color1),))),),
           GestureDetector(onTap: () async => {
            if(color1 !=  Color.fromARGB(255, 248, 4, 0) as Color){
             color2 = const Color.fromARGB(255, 18, 129, 255) as Color,
             elevation2 = 0,

            setState(() {
             
              
            }),
            await Future.delayed(Duration(seconds: 3), () => {
              color2 = const Color.fromARGB(255, 14, 48, 99) as Color,
              elevation2 = 20,
              setState(() {
                
              })
            })
                }
            
          },child: Container(width: size.width*.45, height: size.width*.45,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(200)),child: Material(borderRadius: BorderRadius.circular(200),color: Colors.transparent,elevation: 
          elevation1,child: Container(width: size.width*.35, height:size.width*.35, decoration:  BoxDecoration(borderRadius: BorderRadius.circular(200),color: color2),))),),
        
        ],),
      )
      )
    );
  }
}