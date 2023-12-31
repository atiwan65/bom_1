import 'package:flutter/material.dart';
import 'package:project_name/gg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ตารางงานของฉัน', // เปลี่ยนชื่อแอพพลิเคชันที่นี่
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
          title: 'ตารางงานของฉัน'), // เปลี่ยนชื่อหน้าหลักที่นี่
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
            0xFFFFCA79), // กำหนดสีพื้นหลังของแถบชื่อเป็น RGB (255, 202, 121)
        title: Text(title),
      ),
      backgroundColor: Color.fromARGB(
          255, 243, 223, 192), // กำหนดสีพื้นหลังเป็น RGB (255, 202, 121)
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '',
              style: TextStyle(
                  color: Colors.green), // กำหนดสีตัวหนังสือเป็นสีเขียว
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    GGPage()), // GGPage เป็นชื่อหน้าตามที่คุณต้องการ
          );
        },
        tooltip: 'ไปหน้า gg', // ข้อความ tooltip
        backgroundColor: Colors.green, // กำหนดสีพื้นหลังของปุ่มเป็นสีเขียว
        child: Icon(
          Icons.add,
          color: Colors.white, // กำหนดสีของไอคอนเป็นสีขาว
        ),
      ),
    );
  }
}
