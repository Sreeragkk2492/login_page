

import 'package:flutter/material.dart';
import 'package:login_page/punchappui/dbfunction.dart';
import 'package:login_page/punchappui/loginpage.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final name = TextEditingController();

  final password = TextEditingController();

  final email = TextEditingController();

  final phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    registeruser(
        String name, String password, String email, String phonenumber) async {
      var id = await SQL_function.adduser(name, password, email, phonenumber);
      print(id);
      if (id != null) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Login_sq()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('registration failed')));
      }
   
    }
      void isuserregister(String email) async{ 
          var result=await SQL_function.checkuseralreadyregister(email); 
          if(result.isNotEmpty){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user already registered')));
          }else{
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_sq()));
          }
      }

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/emergency/reg.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
                child: Text(
              'PUNCH',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            )),
            Text(
              'Punch.Earn.Repeat',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).viewInsets.bottom,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); 
                                  },
                                  icon: Icon(
                                    Icons.chevron_left,
                                    color: Colors.black,
                                    size: 35,
                                  )),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          controller: name,
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),hintText: 'name'), 
                        ),
                        SizedBox(height: 15,),
                         TextField(
                          controller: password,
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),hintText: 'password'),
                        ),
                           SizedBox(height: 15,),
                         TextField(
                          controller: email,
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),hintText: 'email'),
                        ),
                           SizedBox(height: 15,),
                         TextField(
                          controller: phonenumber,
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),hintText: 'phone'),
                        ),
                           SizedBox(height: 15,),
                           Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                              onPressed: (){
                                registeruser(name.text, password.text, email.text, phonenumber.text);
                                isuserregister(email.text); 
                              
                               // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_sq()));
                              }, child: Text('Register',style: TextStyle(color: Colors.white),)),
                           ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
