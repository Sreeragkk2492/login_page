import 'dart:math';

import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  List profileDatas = [
    {
      'dp':
          '',
      'name': 'Archana',
      'message': 'hi',
      'time': '2:30'
    },
    {
      'dp':
          '',
      'name': 'rahul',
      'message': 'hoii',
      'time': '2:00'
    },
    {
      'dp':
          '',
      'name': 'sreerag ',
      'message': 'evide?',
      'time': '4:00'
    },
    {
      'dp':
          '',
      'name': 'akshay',
      'message': 'set set',
      'time': '5:00'
    },
    {
      'dp':
          '',
      'name': 'adithya',
      'message': 'poda',
      'time': '9:00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff26cd61),
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          itemCount: 100,
          itemBuilder: (context, index) {
            Random random = Random();
            int randomNumber = random.nextInt(5) + 1;

            var datas = (index % profileDatas.length);
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(profileDatas[datas]['dp']),
              ),
              title: Text(
                profileDatas[datas]['name'],
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              subtitle: Text(
                profileDatas[datas]['message'],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
              ),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                direction: Axis.vertical,
                children: [
                  Text(
                    profileDatas[datas]['time'],
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff26cd61),
                    radius: 10,
                    child: Text(
                      '${randomNumber}',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, int index) => Divider()),
    );
  }
}
