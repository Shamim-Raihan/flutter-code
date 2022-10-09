import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bottom_navigation_bar/pages/chat_page.dart';
import 'package:bottom_navigation_bar/pages/dashborad_page.dart';
import 'package:bottom_navigation_bar/pages/profile_page.dart';
import 'package:bottom_navigation_bar/pages/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<IconData> iconList = [Icons.access_alarm, Icons.ac_unit];
  // int _bottomNavIndex = 0;

  int currentTab = 0;
  final List<Widget> screens = [
    DashBoardPage(),
    ChatPage(),
    ProfilePage(),
    SettingsPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashBoardPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = DashBoardPage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard, color: currentTab == 0 ? Colors.blue : Colors.grey,),
                        Text('Dashboard', style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.grey,),),

                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ChatPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat, color: currentTab == 1 ? Colors.blue : Colors.grey,),
                        Text('Chat', style: TextStyle(color: currentTab == 1 ? Colors.blue : Colors.grey,),),

                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfilePage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, color: currentTab == 2 ? Colors.blue : Colors.grey,),
                        Text('Profile', style: TextStyle(color: currentTab == 2 ? Colors.blue : Colors.grey,),),

                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = SettingsPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings, color: currentTab == 3 ? Colors.blue : Colors.grey,),
                        Text('Setting', style: TextStyle(color: currentTab == 3 ? Colors.blue : Colors.grey,),),

                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   //params
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   icons: iconList,
      //   activeIndex: _bottomNavIndex,
      //   gapLocation: GapLocation.center,
      //   notchSmoothness: NotchSmoothness.softEdge,
      //   onTap: (index) {
      //     setState(() {
      //       _bottomNavIndex = index;
      //     });
      //   },
      //   activeColor: Colors.blue,//other params
      // ),
    );
  }
}
