
import 'package:flutter/material.dart';
import 'package:login_page/whatsappui/call.dart';
import 'package:login_page/whatsappui/chat.dart';
import 'package:login_page/whatsappui/status.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Homepage(),));
}

class Homepage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt,color: Colors.grey,),
              padding: EdgeInsets.only(right: 15),
              constraints: BoxConstraints(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search,color: Colors.grey,),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
            ),
            PopupMenuButton(
              color: Colors.white, 
              itemBuilder: (context) => [
                PopupMenuItem(child: Text('New Group')),
                PopupMenuItem(child: Text('New Broadcast')),
                PopupMenuItem(child: Text('Linked Devices')),
                PopupMenuItem(child: Text('Starred Messages')),
                PopupMenuItem(child: Text('Payments')),
                PopupMenuItem(child: Text('Settings')),
              ],
            )
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: Icon(Icons.group,color: Colors.white,)),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Tab(child: Text('Chat',style: TextStyle(color: Colors.white),),)),
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: Tab(
                 child: Text('Status',style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Tab(child: Text('calls',style: TextStyle(color: Colors.white),),)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child:Text('Add a community') 
          ),
          Chat(),
          Status(),
          Call()
        ]),
      ),
    );
  }
}