import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatelessWidget {
 

   var names = [
    "Elina Solomon",
    "Musa Howe",
    "Persephone Morris",
    "Christian Herman",
    "Paulina Hanson",
    "Khalil Stephens",
    "Millie Dean",
    "Ronan Novak",
    "Kaiya Shannon",
    "Eliel Parsons",
    "Maia Alfaro",
    "Xzavier Palacios",
    "Bria McCarthy",
    "Devin Rodgers",
    "Selah Graves",
    "Cesar Gardner",
    "Jordyn Wilkinson",
    "Leonard Sheppard",
    "Veda Delgado",
    "Colt Merritt"
  ];

  var phones = [
    "(676) 560-1740",
    "(281) 531-8256",
    "(758) 892-4673",
    "(802) 398-5264",
    "(937) 849-4986",
    "(667) 391-4142",
    "(696) 372-7710",
    "(910) 996-8656",
    "(913) 583-7655",
    "(512) 587-4138",
    "(241) 890-7298",
    "(823) 992-5798",
    "(236) 642-0031",
    "(821) 620-5515",
    "(721) 216-6279",
    "(255) 906-2368",
    "(610) 593-8163",
    "(646) 559-1142",
    "(826) 730-1466",
    "(576) 661-0626",
  ];

  var propic=[
   ' assets/emergency/1.jpg',
    ' assets/emergency/2.jpg',
    ' assets/emergency/3.jpg',
    'assets/emergency/4.jpg',
    ' assets/emergency/5.jpg',
    'assets/emergency/6.jpg',
    'assets/emergency/7.jpg',
    'assets/emergency/9.png',
    'assets/emergency/8.jpg',
    'assets/emergency/11.png',
    'assets/emergency/10.jpg',
    'assets/emergency/12.jpg',
    'assets/emergency/13.jpg',
    'assets/emergency/14.jpg',
    'assets/emergency/15.jpg',
    'assets/emergency/16.jpg',
    'assets/emergency/17.jpg',
    'assets/emergency/18.jpg',
    'assets/emergency/19.jpg',
    'assets/emergency/20.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 23, 7),
        title: Text(
          'Emergency Contact List',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.add,
            size: 22,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: List.generate(names.length, (index) => Card(
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(propic[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
            ),
            title: Text(names[index]),
            subtitle: Text(phones[index]),
            trailing: IconButton(onPressed: (){
              final String ph=phones[index];
              launchcall(ph);
            }, icon: Icon(Icons.call,color: Colors.blue,)),
          ),
        )),
      )
    );
  }
  
 Future <void> launchcall(String phones) async{

 final Uri launchUri = Uri(
      scheme: 'tel',
      path: phones,
    );
    await launchUrl(launchUri);

 }
}
