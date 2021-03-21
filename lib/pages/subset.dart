import 'package:flutter/material.dart';
import '../template/box.dart';

class SubSet extends StatefulWidget {
  @override
  _SubSetState createState() => _SubSetState();
}

class _SubSetState extends State<SubSet> {
  List<Box> menu = [
    Box(Colors.white, "สำหรับผู้ประกอบการโครงข่ายเคเบิ้ล",
        "https://docs.google.com/forms/d/1wCJZifFrtwCXBXMHhLQd9-S6V3JAF_zc--8hh7yFzJo/viewform?edit_requested=true"),
    Box(Colors.white, "สำหรับผู้ผลิตรายการ",
        "https://docs.google.com/forms/d/1m3PWWtSCiJ_-t1qnb-mS_40ByHS78ihE8u9lgQPu78k/viewform?edit_requested=true"),
    Box(Colors.white, "สำหรับผู้ประกอบการโครงข่ายทีวีดิจิตอล",
        "https://docs.google.com/forms/d/1znW3wAioKq8KV9U4K4ZQ3C48iqTHJha-2q5RXoYV24c/viewform?edit_requested=true"),
    Box(Colors.white, "สำหรับผู้ประกอบการโครงข่ายดาวเทียม",
        "https://docs.google.com/forms/d/1S0hq_BK-IneVFMhriOVuapmlKASsFDRHcRP2h4hmke0/viewform?edit_requested=true"),
    Box(Colors.white, "สำหรับผู้ประกอบการช่องดิจิตอล",
        "https://docs.google.com/forms/d/1P5uaTUsk9xcFQ5MC3HoOMgGsW3Mv8-2Bh1jUzcjNTBs/viewform?edit_requested=true"),
    Box(Colors.white, "สำหรับผู้ประกอบการช่องดาวเทียม",
        "https://docs.google.com/forms/d/1-GjDZDgaSeIjdS1kbX44Mi9qFtJFDpo4UzKZzQQ4YsM/viewform?edit_requested=true"),
    Box(Colors.white, "สำหรับผู้ประกอบการช่องเคเบิ้ล",
        "https://docs.google.com/forms/d/12PBovFpmV_WXH5D6MmK0H5isib1vd2cR2lwni64j8f8/viewform?edit_requested=true"),
    Box(Colors.white, "สำหรับบุคคลทั่วไป",
        "https://docs.google.com/forms/d/1UFeXo8mng0-6FRyzFcHNwpU7BB49XeCMeKMhCwZ7MLk/viewform?edit_requested=true"),
  ];

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
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext, int index) {
            Box box = menu[index];
            return box;
          },
        ));
  }
}
