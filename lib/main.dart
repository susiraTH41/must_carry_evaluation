import 'package:flutter/material.dart';
import 'pages/myhomepage.dart';

void main() {
  runApp(Myapp1());
}

class Myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test First Apps",
      home: MainPage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/NBTC.png',
                fit: BoxFit.contain,
                height: 50,
              ),
              Image.asset(
                'assets/KTP.png',
                fit: BoxFit.contain,
                height: 50,
              ),
              Image.asset(
                'assets/ku_color_big.png',
                fit: BoxFit.contain,
                height: 50,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 100, 8, 100),
          child: Container(
            child: Column(
              children: [
                Text(
                  "โครงการติดตามและประเมินผลการปฏิบัติงาน เรื่อง หลักเกณฑ์การเผยแพร่กิจการโทรทัศน์ที่ให้บริการเป็นการทั่วไป ตามบริบทกิจการโทรทัศน์ของประเทศไทย โดยมหาลัยเกษตรศาสตร์ ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextButton(
                  child: Text(
                    'เข้าร่วมการประเมินแบบสอบถาม',
                  ),
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    primary: Colors.white,
                    backgroundColor: Colors.green[900],
                    onSurface: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//keytool -genkey -v -keystore c:\Users\pee_s\key.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias key
