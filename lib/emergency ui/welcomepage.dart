import 'package:flutter/material.dart';
import 'package:login_page/emergency%20ui/bottomnavbar.dart';
import 'package:login_page/emergency%20ui/homepage.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcomepage(),
  ));
}

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.elliptical(100, 100)),
                image: DecorationImage(
                    image: AssetImage('assets/emergency/getstarted.jpeg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            '    EMERGENCY\nASSISTANCE FOR\n    CUSTOMERS',
            style: TextStyle(
                color: const Color.fromARGB(255, 236, 19, 4),
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.red),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Bottom()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Lets get started',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
