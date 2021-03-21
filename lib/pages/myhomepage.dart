import 'package:flutter/material.dart';
import '../template/box.dart';
import 'subset.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                /*Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('YourAppTitle'))*/
              ],
            ),
          ),
          //title: Image.asset('image/NBTC.png', fit: BoxFit.cover),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(8, 180, 8, 100),
            child: Column(children: [
              Box(Colors.white, "สำหรับทุกประเภทของผู้มีส่วนได้ส่วนเสีย",
                  "https://docs.google.com/forms/d/e/1FAIpQLSdPZe-Zq5Yjb5cF01dmvlfa_Lgas3UZTEzLdm2lxCzPhN2Apg/viewform?fbclid=IwAR3Jv3eS1x7VHKm29_JBlXDaUkiN68143WCs_Yt42GnyH-NyNb4xAu2yf5c"),
              SizedBox(
                    height: 35.0,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "แยกตามประเภทของผู้มีส่วนได้ส่วนเสีย",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                child: Text('ประเมิน'),
                                style: TextButton.styleFrom(
                                  textStyle: TextStyle(fontWeight: FontWeight.bold,),
                                  primary: Colors.white,
                                  backgroundColor: Colors.green[900],
                                  onSurface: Colors.grey,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SubSet()),
                                  );
                                },
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
            ])));
  }
}
