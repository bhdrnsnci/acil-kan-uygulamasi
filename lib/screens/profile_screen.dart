import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification_screen.dart';
import 'profile_screen.dart';
import 'setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String appTitle = "Profil";
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
                    Navigator.pop(context);
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
        body: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
                      child: Column(
                          children: [
                            TextFormField(
                                initialValue: "Bahadır Nişancı",
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.0),
                                    filled: true,
                                    labelText: "Ad ve Soyad",
                                    hintText: "Adınızı ve soyadınızı yazın.",
                                    labelStyle: TextStyle(color: Colors.black87),
                                    suffixIcon:
                                    IconButton(icon:
                                    Icon(Icons.clear, color: Colors.black87),
                                      onPressed: clearText,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black87)
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                                initialValue: "05412078211",
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.0),
                                    filled: true,
                                    labelText: "Telefon",
                                    hintText: "Telefon numaranız",
                                    labelStyle: TextStyle(color: Colors.black87),
                                    suffixIcon:
                                    IconButton(icon:
                                    Icon(Icons.clear, color: Colors.black87),
                                      onPressed: clearText,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black87)
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                                initialValue: "İsmet Paşa mahallesi, ",
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.0),
                                    filled: true,
                                    labelText: "Adres",
                                    hintText: "Adresinizi yazınız.",
                                    labelStyle: TextStyle(color: Colors.black87),
                                    suffixIcon:
                                    IconButton(icon:
                                    Icon(Icons.clear, color: Colors.black87),
                                      onPressed: clearText,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black87)
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                                initialValue: "bhdrnsnci@gmail.com",
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.0),
                                    filled: true,
                                    labelText: "E-Posta",
                                    hintText: "E-posta adresinizi yazınız.",
                                    labelStyle: TextStyle(color: Colors.black87),
                                    suffixIcon:
                                    IconButton(icon:
                                    Icon(Icons.clear, color: Colors.black87),
                                      onPressed: clearText,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black87)
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                                initialValue: "***********",
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.0),
                                    filled: true,
                                    labelText: "Şifre",
                                    hintText: "Şifrenizi yazınız.",
                                    labelStyle: TextStyle(color: Colors.black87),
                                    suffixIcon:
                                    IconButton(icon:
                                    Icon(Icons.clear, color: Colors.black87),
                                      onPressed: clearText,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black87)
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              width: 500.0,
                              child: RaisedButton(
                                  padding: EdgeInsets.all(15.0),
                                color: Colors.red,
                                  textColor: Colors.white,
                                  child: Text("Güncelle"),
                                  onPressed: () {}
                              )
                            )
                          ]
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