import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/calls.dart';
import 'package:platform_converter_app/camerapage.dart';
import 'package:platform_converter_app/chats.dart';
import 'package:platform_converter_app/global.dart';
import 'package:platform_converter_app/settings.dart';
import 'package:platform_converter_app/statuspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  PageController pageController = PageController();
  int initialTabindex = 0;
  int initialStepValue = 0;

  List pages = [
    ChatsComponent(),
    CallsComponent(),
    StatusComponent(),
  ];

  List data = [
    StatusComponent(),
    CallsComponent(),
    CameraComponent(),
    ChatsComponent(),
    SettingsComponent(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      setState(() {
        initialTabindex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              floatingActionButton: (initialTabindex == 0)
                  ? FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: () {},
                      child: const Icon(Icons.chat),
                    )
                  : null,
              appBar: AppBar(
                backgroundColor: Colors.green,
                title: const Text("WhatsApp"),
                actions: [
                  Switch(
                      value: Global.isIOS,
                      activeColor: Colors.green,
                      inactiveTrackColor: Colors.grey,
                      onChanged: (val) {
                        setState(() {
                          Global.isIOS = val;
                        });
                      })
                ],
                bottom: TabBar(
                  controller: tabController,
                  onTap: (val) {
                    setState(
                      () {
                        pageController.animateToPage(val,
                            duration: const Duration(milliseconds: 900),
                            curve: Curves.easeInOut);
                      },
                    );
                  },
                  tabs: <Tab>[
                    Tab(
                      text: "CHATS",
                    ),
                    Tab(
                      text: "STATUS",
                    ),
                    Tab(
                      text: "CALLS",
                    ),
                  ],
                ),
              ),
              drawer: Drawer(
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        color: Colors.green,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 55),
                            CircleAvatar(radius: 50),
                            SizedBox(height: 10),
                            Text(
                              "Meet Kajavadra",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "+91 8154992499",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Column(
                        children: const [
                          ListTile(
                            leading: Icon(Icons.people),
                            title: Text("New Group"),
                          ),
                          ListTile(
                            leading: Icon(Icons.account_circle),
                            title: Text("New Contact"),
                          ),
                          ListTile(
                            leading: Icon(Icons.phone),
                            title: Text("Calls"),
                          ),
                          ListTile(
                            leading: Icon(Icons.bookmark_border),
                            title: Text("Saved Message"),
                          ),
                          ListTile(
                            leading: Icon(Icons.settings),
                            title: Text("Settings"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              body: PageView.builder(
                controller: pageController,
                onPageChanged: (val) {
                  setState(() {
                    tabController.animateTo(val);
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, i) {
                  return pages[i];
                },
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              child: CustomScrollView(
                slivers: [
                  CupertinoSliverNavigationBar(
                    largeTitle: Text('Whatsapp'),
                    trailing: CupertinoSwitch(
                      value: Global.isIOS,
                      onChanged: (val) {
                        setState(() {
                          Global.isIOS = val;
                        });
                      },
                    ),
                  ),
                  SliverFillRemaining(
                    child: CupertinoTabScaffold(
                      tabBar: CupertinoTabBar(
                        items: <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.heart_circle),
                            label: "Status",
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.phone),
                            label: "Calls",
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.camera),
                            label: "Camera",
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.chat_bubble),
                            label: "Chats",
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.settings),
                            label: "Settings",
                          ),
                        ],
                      ),
                      tabBuilder: (context, index) {
                        return CupertinoTabView(
                          builder: (context) {
                            return data[index];
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            // home: CupertinoPageScaffold(
            //   navigationBar: CupertinoNavigationBar(
            //     leading: Icon(
            //       CupertinoIcons.home,
            //       color: Colors.blue,
            //       size: 30.0,
            //     ),
            //     middle: Text("WhatsApp"),
            //     trailing: CupertinoSwitch(
            //       value: Global.isIOS,
            //       onChanged: (val) {
            //         setState(() {
            //           Global.isIOS = val;
            //         });
            //       },
            //     ),
            //   ),
            // ),
          );
  }
}
