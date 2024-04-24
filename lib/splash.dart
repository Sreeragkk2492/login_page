import 'package:flutter/material.dart';
import 'package:login_page/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     gotohome();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            child: Image.asset("assets/icons/icon3.png",),
          ),
        ),
      ),
    );
  }

  Future <void> gotohome()async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Homepage()));
  }
}