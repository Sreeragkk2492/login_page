import 'package:flutter/material.dart';
import 'package:login_page/signuppage.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
 bool shwpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 490,
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome back! Login with your credentials",
                  style: TextStyle(fontSize: 17, color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Email",
                       suffixIcon: Icon(Icons.email)),
                  ),
                ),
                    SizedBox(
                  height: 20,
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: shwpass,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Password",
                     suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(shwpass){
                        shwpass=false;
                      }else{
                        shwpass=true;
                      }
                    });
                     }, icon: Icon(shwpass?Icons.visibility_off:Icons.visibility))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                 Container(
                  width: 290,
                   child: ElevatedButton(
                            onPressed: () {
                            //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginscreen()));
                            },
                            child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade600,)),
                 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.grey.shade600),),
                  TextButton(onPressed: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Signuppage()));
                  }, child: Text("Signup",style: TextStyle(color: Colors.black),)),
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
