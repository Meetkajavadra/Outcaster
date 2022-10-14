import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/global.dart';

class CallsComponent extends StatefulWidget {
  const CallsComponent({Key? key}) : super(key: key);

  @override
  State<CallsComponent> createState() => _CallsComponentState();
}

class _CallsComponentState extends State<CallsComponent> {
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
                    subtitle: Text("10:50 pm"),
                    trailing: Icon(Icons.call, color: Colors.green),
                  ),
                  ListTile(
                    leading: FlutterLogo(size: 35),
                    title: Text("Bumble Bee"),
                    subtitle: Text("10:50 pm"),
                    trailing: Icon(Icons.call, color: Colors.green),
                  ),
                  ListTile(
                    leading: FlutterLogo(size: 35),
                    title: Text("Mega Trone"),
                    subtitle: Text("10:50 pm"),
                    trailing: Icon(Icons.call, color: Colors.green),
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
                      child: Text("Calls",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
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
                            Text("10:50 pm",style: TextStyle(fontSize: 13,color: Colors.grey),)
                          ],
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.phone)
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
                            Text("10:50 pm",style: TextStyle(fontSize: 13,color: Colors.grey),)
                          ],
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.phone)
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
                            Text("10:50 pm",style: TextStyle(fontSize: 13,color: Colors.grey),)
                          ],
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.phone)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
