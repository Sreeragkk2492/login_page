import 'package:flutter/material.dart';
import 'package:login_page/punchappui/admindashboard.dart';
import 'package:login_page/punchappui/adminhome.dart';
import 'package:login_page/punchappui/dbfunction.dart';

class Login_sq extends StatelessWidget {
  final cemail = TextEditingController();
  final cpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void loginuser(String email, String pass) async {
     
        var data = await SQL_function.checkuserregister(email, pass);
        if (data.isNotEmpty) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Adminhome()));
        }
    
    }

    void adminlogin(String email, String pass) async {
      if (email == 'admin' && pass == '111') {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Admindash()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('admin not exist')));
      }
    }

    void handleLogin() {
      if (cemail.text == 'admin' && cpassword.text == '111') {
        adminlogin(cemail.text, cpassword.text);
      } else {
        loginuser(cemail.text, cpassword.text);
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
                                'Login',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: cemail,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'email'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: cpassword,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'password'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              onPressed: () {
                               handleLogin(); 
                                cemail.clear();
                                cpassword.clear();
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              )),
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
