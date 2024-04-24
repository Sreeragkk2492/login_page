import 'package:flutter/material.dart';
import 'package:login_page/loginscreen.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  bool shwpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Signup",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0
                ),
                Text(
                  "Create an account,it's free",
                  style: TextStyle(fontSize: 17, color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 0,
                ),
                Form(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: "Email"),
                      ),
                      
                    ),
                    SizedBox(height: 5,),
                     Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        obscureText: shwpass,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              if(shwpass){
                                shwpass=false;
                              }else{
                                shwpass=true;
                              }
                            });
                          }, icon: Icon(shwpass?Icons.visibility_off:Icons.visibility)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: "Password"), 
                      ),
                      
                    ),
                     SizedBox(height:5 ,),
                     Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          //suffixIcon: Icon(Icons.confirmation_num),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: "Confirm password"),
                      ),
                      
                    ),
                  ],
                )),
                   SizedBox(
                    height: 5,
                  ),
                   Container(
                    width: 290,
                     child: ElevatedButton(
                              onPressed: () {
                              //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginscreen()));
                              },
                              child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,)),
                   ),
                      Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(color: Colors.grey.shade600),),
                    TextButton(onPressed: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginscreen()));
                    }, child: Text("Login",style: TextStyle(color: Colors.black),)),
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
