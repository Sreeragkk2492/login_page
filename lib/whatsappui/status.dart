
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  List updatesList = [
    {
      'dp':
          'https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Sreerag',
      'time': '1 minutes ago'
    },
    {
      'dp':
          'https://images.pexels.com/photos/442559/pexels-photo-442559.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'aslu',
      'time': '1 hour ago'
    },
    {
      'dp':
          'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'archana',
      'time': ' 5 hour ago'
    },
  ];
  List viewedList = [
    {
      'dp':
          'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'erma ',
      'time': 'Yesterday, 2:30 pm'
    },
    {
      'dp':
          'https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'akshay',
      'time': 'today, 6:00 pm' 
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff26cd61),
        onPressed: () {},
        child: Icon(Icons.camera_alt,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: CircleAvatar(
                        radius: 23,
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=338&ext=jpg&ga=GA1.2.1666965185.1672814344')),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green.shade500,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  )
                ],
              ),
              title: Text(
                'My Status',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Tap to add status up date'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Color(0xffefefef),
              child: const Text(
                'Recent Updates',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 59, 247, 2),
                      radius: 30,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(updatesList[index]['dp']),
                        radius: 25,
                      ),
                    ),
                    title: Text(updatesList[index]['name']),
                    subtitle: Text(updatesList[index]['time']),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      indent: 80,
                      endIndent: 10,
                    ),
                itemCount: updatesList.length),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Color(0xffefefef),
              child: const Text(
                'Viewed Updates',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(viewedList[index]['dp']),
                    ),
                    title: Text(viewedList[index]['name']),
                    subtitle: Text(viewedList[index]['time']),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                     
                    ),
                itemCount: viewedList.length),
          ],
        ),
      ),
    );
  }
}