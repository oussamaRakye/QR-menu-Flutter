import 'package:flutter/material.dart';
import 'package:hostalmonistrol/loaders.dart';
import 'menu_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final controller = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFirst();
  }


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        MenuScreen(title: '   Primers ->', list: Loader.primers,),
        MenuScreen(title: '<- Carns ->', list: Loader.carns,),
        MenuScreen(title: '<- Peixos   ', list: Loader.peixos,),
      ],
    );
  }

  void getFirst() async{
    if(Loader.primers.length<2){
      await Future.delayed(Duration(milliseconds: 50));
      getFirst();
    }
    else{
      setState(() {

      });
    }
  }
}
