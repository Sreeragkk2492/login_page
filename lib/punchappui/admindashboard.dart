import 'package:flutter/material.dart';
import 'package:login_page/punchappui/dbfunction.dart';

class Admindash extends StatefulWidget {
  @override
  State<Admindash> createState() => _AdmindashState();
}

class _AdmindashState extends State<Admindash> {
  var tasks = [];

  @override
  void initState() {
    super.initState();
    loaduser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('admin dashboard'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/emergency/dashboardd.jpg'),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
              
                 
                  SizedBox(
                    height: 190,
                  ),
                   Center(
                      child: Text(
                    'AdminDashboard',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                          itemCount: tasks.length,
                          itemBuilder: (context, index) => Card(
                                child: ListTile(
                                  title: Text(tasks[index]['name']),
                                  subtitle: Text(tasks[index]['email']),
                                  trailing: Wrap(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              delele(tasks[index]['id']);
                                            });
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ))
                                    ],
                                  ),
                                ),
                              )),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loaduser() async {
    var u = await SQL_function.takeusers();
    setState(() {
      tasks = u;
    });
  }

  void delele(int id) async {
    await SQL_function.deletetask(id);
    loaduser();
  }
}
