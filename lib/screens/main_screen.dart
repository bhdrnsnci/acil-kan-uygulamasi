import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification_screen.dart';
import 'profile_screen.dart';
import 'setting_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String appTitle = "Acil Kan Uygulaması";
  final String appIcon = "assets/icons/blood.svg";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar:
        AppBar(
            backgroundColor: Color.fromRGBO(200, 0, 0, 1.0),
            leading: Container(
                padding: EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                    appIcon,
                    color: Colors.white
                )
            ),
            title: Text(appTitle),
            actions: [
              IconButton(icon: Icon(Icons.notifications_active_outlined),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotificationScreen())
                    );
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
        body: Column(
            children: [
              Expanded(
                  child: Container(
                      height: MediaQuery.of(context).size.height*1.0,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1.0)
                      ),
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                          children: [
                            SizedBox(height: 40.0),
                            TextFormField(
                                controller: fieldText,
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.0),
                                    filled: true,
                                    labelText: "Mesajınızı yazabilirsiniz.",
                                    hintText: "Bir canın sana ihtiyacı var.",
                                    labelStyle: TextStyle(color: Colors.red),
                                    suffixIcon:
                                    IconButton(icon:
                                    Icon(Icons.clear, color: Colors.red),
                                      onPressed: clearText,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            SizedBox(height: 20.0),
                            Expanded(
                                child: Center(
                                    child: RaisedButton(
                                      padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 20.0),
                                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100.0)),
                                      color: Color.fromRGBO(200, 0, 0, 1.0),
                                      splashColor: Color.fromRGBO(150, 0, 0, 1.0),
                                      textColor: Colors.red,
                                      child: Icon(Icons.favorite, size: 50.0, semanticLabel: "+", color: Colors.white),
                                      onPressed: () {},
                                    )
                                )
                            )
                          ]
                      )
                  )
              )
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
  void clearText(){
    fieldText.clear();
  }
}