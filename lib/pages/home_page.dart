import 'package:coronahelp/fragments/profile_fragment.dart';
import 'package:coronahelp/fragments/question_corona_fragment.dart';
import 'package:coronahelp/pages/maps_page.dart';
import 'package:coronahelp/pages/question_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    MapsPage(),
    ProfileFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 4.0,
          child: BottomNavigationBar(
              currentIndex: this._selectedIndex,
              onTap: this._onItemTapped,
              selectedItemColor: Colors.red,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu), title: Text("Área de risco")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.perm_identity), title: Text("Sobre")),
              ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _selectedIndex == 0
            ? FloatingActionButton(
                highlightElevation: 15.0,
                child: Icon(Icons.location_on),
                backgroundColor: Colors.red,
                onPressed: () {},
              )
            : null);
  }

  _openModalSendQuestion() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            child: QuestionPage(),
            backgroundColor: Colors.white,
          );
        });
  }
}
