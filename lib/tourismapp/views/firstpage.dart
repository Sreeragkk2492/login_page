import 'package:flutter/material.dart';
import 'package:login_page/tourismapp/views/tourhome.dart';
import 'package:login_page/tourismapp/widgets/button.dart';

class Tourfirst extends StatelessWidget {
  const Tourfirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              width: 200,
              height: 30,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tourhome()));
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Or'),
          SizedBox(
            height: 10,
          ),
          Buttonwidget(
              ontap: () {},
              title: 'Login with facebook',
              icon: Icons.facebook,
              colors: Colors.blue),
              SizedBox(
                height: 10,
              ),
               Buttonwidget(
              ontap: () {},
              title: 'Login with twitter',
              icon: Icons.one_x_mobiledata,
              colors: Colors.lightBlue),
              SizedBox(height: 10,), 
               Buttonwidget(
              ontap: () {},
              title: 'Login with google',
              icon: Icons.mobile_friendly,
              colors: Colors.red),
        ],
      ),
    );
  }
}
