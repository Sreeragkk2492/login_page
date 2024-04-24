import 'package:flutter/material.dart';
import 'package:login_page/loginscreen.dart';
import 'package:login_page/signuppage.dart';
import 'package:login_page/splash.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("afcasfd"),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Center(
                      child: Text(
                    "Hello There!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Automatic idendity verification which enable you to \n                          verify your identity",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/icons/icon3.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // color: Colors.blue,
                    width: 390,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginscreen()));
                        },
                        child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade600,)),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                   Container(
                    // color: Colors.blue,
                    width: 390,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Signuppage()));
                        },
                        child: Text("Signup",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
