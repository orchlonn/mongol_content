import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/home_screen/components/header.dart';
import 'package:mongol_content/home_screen/components/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _selectedIndex = -1;

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = -1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildNavBar() {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Colors.grey.shade400),
                    right: BorderSide(width: 1, color: Colors.grey.shade400),
                    bottom: BorderSide(
                        width: 2,
                        color: _selectedIndex == 0
                            ? primaryColor
                            : Colors.grey.shade400),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: _selectedIndex == 0
                          ? primaryColor
                          : Colors.grey.shade700,
                    ),
                    Text(
                      "HOME",
                      style: TextStyle(
                          color:
                              _selectedIndex == 0 ? primaryColor : Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Colors.grey.shade400),
                    right: BorderSide(width: 1, color: Colors.grey.shade400),
                    bottom: BorderSide(
                        width: 2,
                        color: _selectedIndex == 1
                            ? primaryColor
                            : Colors.grey.shade400),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 30,
                      color: _selectedIndex == 1
                          ? primaryColor
                          : Colors.grey.shade700,
                    ),
                    Text(
                      "FIND US",
                      style: TextStyle(
                          color:
                              _selectedIndex == 1 ? primaryColor : Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Colors.grey.shade400),
                    right: BorderSide(width: 1, color: Colors.grey.shade400),
                    bottom: BorderSide(
                        width: 2,
                        color: _selectedIndex == 2
                            ? primaryColor
                            : Colors.grey.shade400),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.fact_check,
                      size: 30,
                      color: _selectedIndex == 2
                          ? primaryColor
                          : Colors.grey.shade700,
                    ),
                    Text(
                      "SERVICES",
                      style: TextStyle(
                          color:
                              _selectedIndex == 2 ? primaryColor : Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Colors.grey.shade400),
                    bottom: BorderSide(
                        width: 2,
                        color: _selectedIndex == 3
                            ? primaryColor
                            : Colors.grey.shade400),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_in_talk_sharp,
                      size: 30,
                      color: _selectedIndex == 3
                          ? primaryColor
                          : Colors.grey.shade700,
                    ),
                    Text(
                      "HELP",
                      style: TextStyle(
                          color:
                              _selectedIndex == 3 ? primaryColor : Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 35,
            ),
            onPressed: () {},
          ),
          title: Image.asset(
            "assets/images/logo.png",
            height: 50,
          ),
        ),
        body: Column(
          children: const [
            Header(),
            Services(),
          ],
        ),
        bottomNavigationBar: SafeArea(child: _buildNavBar())
        // bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.business),
        //       label: 'Find Us',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.school),
        //       label: 'Services',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.school),
        //       label: 'Help',
        //     ),
        //   ],
        //   currentIndex: _selectedIndex,
        //   selectedItemColor: primaryColor,
        //   onTap: _onItemTapped,
        // ),
        );
  }
}
