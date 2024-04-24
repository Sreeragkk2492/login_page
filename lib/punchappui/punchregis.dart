import 'package:flutter/material.dart';
import 'package:login_page/punchappui/loginpage.dart';
import 'package:login_page/punchappui/signup.dart';

class Punchreg extends StatelessWidget {
  const Punchreg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('hi'),
      // ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 850,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/emergency/black.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
              left: 120,
              top: 100,
              child: Text(
                'PUNCH',
                style: TextStyle(
                    letterSpacing: 8,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              )),
          Positioned(
            left: 140,
            top: 150,
              child: Text(
            'Punch.Earn.Repeat',
            style: TextStyle(
             
              color: Colors.white),
          )),
          Positioned(
            //bottom: 90,
            top: 270,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Icon(
                        Icons.file_copy,
                        size: 55,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      '         Lorem Ipsum is simply dummy\n text of theprinting and typesetting industry Lorem Ipsum has been the industry',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Signup()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: Center(
                            child: Text(
                              'sign up',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Login_sq()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          child: Center(
                            child: Text(
                              'Login ',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
