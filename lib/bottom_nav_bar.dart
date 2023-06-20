import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:slidable_app/favorite_page.dart';
import 'package:slidable_app/message_page.dart';
import 'package:slidable_app/person_page.dart';
import 'package:slidable_app/player_page.dart';

import 'home_page.dart';
class BottomNavBar extends StatefulWidget {
  static const String id ="bottom_nav-bar";
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index1) {
          setState(() {
            _currentIndex = index1;
          });
        },
        children: const [
          HomePage(),
          MessagePage(),
          FavoritePage(),
          PlayerPage(),
          PersonPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.deepOrange,
        fixedColor: Colors.green,
        items:  const [
           BottomNavigationBarItem(

           label: "",
            icon: Icon(IconlyLight.home,color: Colors.black,),
          ),
          BottomNavigationBarItem(
            label: "",
            icon:Icon(Icons.mark_chat_unread_outlined,color: Colors.lime,)
          ),
           BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.favorite_border,color: Colors.lime,),
          ),
           BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.video_collection_outlined,color: Colors.lime,),
          ),
           BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person_outline_sharp,color: Colors.lime,),
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.lime,
        onTap: (index2) {
          setState(() {
            _currentIndex = index2;
            _pageController.animateToPage(
              _currentIndex,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
            );
          });
        },
      ),
    );
  }
}
