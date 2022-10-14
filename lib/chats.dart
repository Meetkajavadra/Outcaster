import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class ChatsComponent extends StatefulWidget {
  const ChatsComponent({Key? key}) : super(key: key);

  @override
  State<ChatsComponent> createState() => _ChatsComponentState();
}

class _ChatsComponentState extends State<ChatsComponent> {
  @override
  Widget build(BuildContext context) {
     return (Global.isIOS == false)
         ? MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Container(
         padding: EdgeInsets.all(8),
         child: Column(
           children: [
             ListTile(
               leading: FlutterLogo(size: 35),
               title: Text("Optimas Prime"),
               subtitle: Text("Hey There.."),
               trailing: Text("02:00 am",style: TextStyle(fontSize: 13,color: Colors.grey),)
             ),
             ListTile(
               leading: FlutterLogo(size: 35),
               title: Text("Bumble Bee"),
               subtitle: Text("How Are You."),
               trailing: Text("10:50 pm",style: TextStyle(fontSize: 13,color: Colors.grey),)
             ),
             ListTile(
               leading: FlutterLogo(size: 35),
               title: Text("Mega Trone"),
               subtitle: Text("Let's Do this..!"),
               trailing: Text("08:00 pm",style: TextStyle(fontSize: 13,color: Colors.grey),)
             ),
           ],
         ),
       ),
     )
         : CupertinoApp(
       debugShowCheckedModeBanner: false,
       home: CupertinoPageScaffold(
         child: Container(
           padding: EdgeInsets.all(10),
           child: Column(
             children: [
               Container(
                 height: 40,
                 alignment: Alignment.topLeft,
                 child: Text("Chats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
               ),
               SizedBox(height: 10),
               Row(
                 children: [
                   FlutterLogo(size: 35),
                   SizedBox(width: 15),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Optimas Prime"),
                       Text("Hey There..",style: TextStyle(fontSize: 13,color: Colors.grey),)
                     ],
                   ),
                   Spacer(),
                   Text("02:00 pm",style: TextStyle(fontSize: 13,color: Colors.grey),)
                 ],
               ),
               SizedBox(height: 20),
               Row(
                 children: [
                   FlutterLogo(size: 35),
                   SizedBox(width: 15),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Bumble Bee"),
                       Text("How Are You.",style: TextStyle(fontSize: 13,color: Colors.grey),)
                     ],
                   ),
                   Spacer(),
                   Text("10:50 pm",style: TextStyle(fontSize: 13,color: Colors.grey),)
                 ],
               ),
               SizedBox(height: 20),
               Row(
                 children: [
                   FlutterLogo(size: 35),
                   SizedBox(width: 15),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Mega Trone"),
                       Text("Let's Do this..!",style: TextStyle(fontSize: 13,color: Colors.grey),)
                     ],
                   ),
                   Spacer(),
                   Text("10:50 pm",style: TextStyle(fontSize: 13,color: Colors.grey),)
                 ],
               ),
             ],
           ),
         ),
       ),
     );
  }
}
