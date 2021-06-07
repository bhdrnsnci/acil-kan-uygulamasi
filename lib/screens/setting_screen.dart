import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'profile_screen.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String appTitle = "Ayarlar";
  final String appIcon = "assets/icons/blood.svg";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  bool isSwitched6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(200, 0, 0, 1.0),
            leading: Container(
                padding: EdgeInsets.all(12.0),
                child: SvgPicture.asset(appIcon, color: Colors.white)),
            title: Text(appTitle),
            actions: [
              IconButton(
                  icon: Icon(Icons.notifications_active_outlined),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              IconButton(icon: Icon(Icons.menu), onPressed: _openDrawer)
            ]),
        drawer: Drawer(
            child: Column(children: [
          Container(
              width: 500.0,
              padding: EdgeInsets.all(0.0),
              color: Color.fromRGBO(200, 0, 0, 1.0),
              child: DrawerHeader(
                  decoration: BoxDecoration(),
                  child: Text('  \nMenü',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      )))),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ayarlar'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
          )
        ])),
        body: Container(
          padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
            child: Column(children: [
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Kan Bağışçısıyım", style: TextStyle(fontSize: 16.0),),
                  ),
                  Flexible(
                      flex: 1,
                      child: Transform.scale(scale: 1.1,
                          child: Switch(
                              value: isSwitched1,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched1 = value;
                                });
                              })))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Kan Bağışına Engelim Var", style: TextStyle(fontSize: 16.0),),
                  ),
                  Flexible(
                      flex: 1,
                      child: Transform.scale(scale: 1.1,
                          child: Switch(
                              value: isSwitched2,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched2 = value;
                                });
                              })))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Alkol Kullanıyorum", style: TextStyle(fontSize: 16.0),),
                  ),
                  Flexible(
                      flex: 1,
                      child: Transform.scale(scale: 1.1,
                          child: Switch(
                              value: isSwitched3,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched3 = value;
                                });
                              })))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Uyuşturucu Madde Kullanıyorum", style: TextStyle(fontSize: 16.0),),
                  ),
                  Flexible(
                      flex: 1,
                      child: Transform.scale(scale: 1.1,
                          child: Switch(
                              value: isSwitched4,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched4 = value;
                                });
                              })))
                ],
              ),
              SizedBox(height: 25.0),
              Container(
                alignment: Alignment.topLeft,
                  child: Text("İzinler", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Bildirim Almak İstiyorum", style: TextStyle(fontSize: 16.0),),
                  ),
                  Flexible(
                      flex: 1,
                      child: Transform.scale(scale: 1.1,
                          child: Switch(
                              value: isSwitched5,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched5 = value;
                                });
                              })))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Text("Mesaj Almak İstiyorum", style: TextStyle(fontSize: 16.0),),
                  ),
                  Flexible(
                      flex: 1,
                      child: Transform.scale(scale: 1.1,
                          child: Switch(
                              value: isSwitched6,
                              activeColor: Colors.red,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched6 = value;
                                });
                              })))
                ],
              ),
        ])));
  }

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }
}
