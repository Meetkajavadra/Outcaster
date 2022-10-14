import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Cupertino Store'),
          ),
          SliverFillRemaining(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/vagasake.jpg',
                          height: 105, width: 100),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Vagabond Shoes",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black)),
                          SizedBox(height: 7),
                          Text("Rs. 2500",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.plus_circle,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/belt.jpg',
                          height: 105, width: 100),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Adiddas Belt",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black)),
                          SizedBox(height: 7),
                          Text("Rs. 1500",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.plus_circle,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/earrings.jpg',
                          height: 105, width: 100),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ear rings",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black)),
                          SizedBox(height: 7),
                          Text("Rs. 12000",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.plus_circle,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/keyring.jpg',
                          height: 105, width: 100),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mag Safe",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black)),
                          SizedBox(height: 7),
                          Text("Rs. 5000",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.plus_circle,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/stella.jpg',
                          height: 105, width: 100),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sun Glasses",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black)),
                          SizedBox(height: 7),
                          Text("Rs. 500",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.plus_circle,
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/shocks1.jpg',
                          height: 105, width: 100),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shocks",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black)),
                          SizedBox(height: 7),
                          Text("Rs. 200",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.plus_circle,
                        size: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
