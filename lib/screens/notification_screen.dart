import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'profile_screen.dart';
import 'setting_screen.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String appTitle = "Bildirimler";
  final String appIcon = "assets/icons/blood.svg";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar:
      AppBar(
          backgroundColor: Color.fromRGBO(200, 0, 0, 1.0),
          leading: Container(
              padding: EdgeInsets.all(12.0),
              child: SvgPicture.asset(appIcon, color: Colors.white)),
          title: Text(appTitle),
          actions: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.pop(context);
                }),
            IconButton(icon: Icon(Icons.menu),
                onPressed:
                _openDrawer
            )
          ]
      ),
        drawer: Drawer(
            child: Column(
                children: [
                  Container(
                      width: 500.0,
                      padding: EdgeInsets.all(0.0),
                      color: Color.fromRGBO(200, 0, 0, 1.0),
                      child:
                      DrawerHeader(
                          decoration: BoxDecoration(
                          ),
                          child: Text(
                              '  \nMenü',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              )
                          )
                      )),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profil'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfileScreen())
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Ayarlar'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SettingScreen())
                      );
                    },
                  )
                ]
            )
        ),
      body: Column(children: [
        Expanded(
            child: ListView(children: const <Widget>[
              SizedBox(height: 15.0),
              ListTile(
                leading: Icon(Icons.move_to_inbox),
                title: Text("Bir Kan, Üç Can"),
                subtitle: Text("Değerli üyemiz. Kan bağışı yapabileceğiniz noktolar için ..."),
                trailing: Icon(Icons.delete_forever),
              ),
              SizedBox(height: 5.0),
              ListTile(
                leading: Icon(Icons.move_to_inbox),
                title: Text("Teşekkür Ederiz"),
                subtitle: Text("Kan bağışcısı olduğunuz için teşekkür ederiz."),
                trailing: Icon(Icons.delete_forever),
              )
            ])),
      ]
      )
    );
  }
  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }
  void _closeDrawer() {
    Navigator.of(context).pop();
  }
}