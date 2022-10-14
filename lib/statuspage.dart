import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class StatusComponent extends StatefulWidget {
  const StatusComponent({Key? key}) : super(key: key);

  @override
  State<StatusComponent> createState() => _StatusComponentState();
}

class _StatusComponentState extends State<StatusComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          (Global.isIOS == true)
          ? Container(
            height: 40,
            alignment: Alignment.topLeft,
            child: Text("Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          )
          :
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Add to my status",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Spacer(),
              Icon(CupertinoIcons.camera_circle_fill,size: 32,),
              SizedBox(width: 10),
              Icon(CupertinoIcons.pencil,size: 32,),
            ],
          ),
          SizedBox(height:20),
          Container(
            alignment: Alignment.topLeft,
            child: Text('Recent Updates',style: TextStyle(color: Colors.black45),),
          ),
          SizedBox(height:7),
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dhruvin",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "2h ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height:10),
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vraj",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "5h ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height:10),
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Darshit",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "7h ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
