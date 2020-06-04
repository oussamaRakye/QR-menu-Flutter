import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'loaders.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    Loader.loadFiles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img/hostalLogo.png', height: 40.0,),
                Text(
                    'Hostal Monistrol',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          elevation: 10,
          backgroundColor: Color.fromARGB(255, 195, 255, 190),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 220, 242, 176),
                  Color.fromARGB(255, 175, 240, 170)
                ],
                begin: FractionalOffset(0.5,0.0),
                end: FractionalOffset(0.0,0.5),
                stops: [0.0,1.0],
              ),
            ),
            child: MainScreen(),
          ),
        ),
      ),
    );
  }
}
