import 'package:flutter/material.dart';
import 'package:login_page/punchappui/punchregis.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Punchsplash(),
  ));
}

class Punchsplash extends StatefulWidget {
  const Punchsplash({super.key});

  @override
  State<Punchsplash> createState() => _PunchsplashState();
}

class _PunchsplashState extends State<Punchsplash> {

  @override
  void initState() {
   gotopunchregistration();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            width: double.infinity,
            height: 800, 
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/emergency/punchsplash1.jpg'),fit: BoxFit.cover)), 
          ),
          
          Center(
            child: GradientText('Punch',style: TextStyle(fontSize: 53,fontWeight: FontWeight.bold), colors: [
              Colors.purple,
              Colors.black,
              Colors.blue,
              Colors.pink,
            ]),
            
          ),
          Positioned(
            left: 135, 
            bottom: 350,
            child: RichText(text: TextSpan(
            children: [
              TextSpan(text: 'punch ',style:TextStyle(color: Colors.pink,fontSize: 16) ),
              TextSpan(text: '.',style: TextStyle(color: Colors.black,fontSize: 16)),
               TextSpan(text: 'eat ',style:TextStyle(color: Colors.blue[900],fontSize: 16) ), 
                TextSpan(text: '.',style: TextStyle(color: Colors.black,fontSize: 16)),
                TextSpan(text: 'repeat ',style:TextStyle(color: Colors.purple,fontSize: 16) )
            ]
          )))
        ]
      ),
    );
  }
  
 Future <void> gotopunchregistration() async{
  await Future.delayed(Duration(seconds: 2));
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Punchreg()));
 }
}