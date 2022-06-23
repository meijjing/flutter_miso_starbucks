import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miso_starbucks/miso/booking_list.dart';
import 'package:miso_starbucks/miso/event.dart';
import 'package:miso_starbucks/miso/home.dart';
import 'package:miso_starbucks/miso/mypage.dart';

class MisoPage extends StatefulWidget {
  const MisoPage({Key? key}) : super(key: key);

  @override
  State<MisoPage> createState() => _MisoPageState();
}

class _MisoPageState extends State<MisoPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          Home(),
          BookingList(),
          Event(),
          Mypage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: Color.fromARGB(255, 53, 104, 246),
        unselectedItemColor: Color.fromARGB(255, 155, 181, 253),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gift_fill),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt),
            label: '',
          ),
        ],
      ),
    );
  }
}
