import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hostalmonistrol/loaders.dart';
import 'card_plate.dart';

class MenuScreen extends StatefulWidget {

  final String title;
  final List<Widget> list;

  MenuScreen({this.title,this.list});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
              fontSize: 50,
            ),
            ),
            Column(
              children: widget.list,
            ),
            Column(
              children: [
                Text('Si vostè té algun tipus d’intolerància, pregunteu al cambrer/a sobre les guarnicions ',
                style: TextStyle(color: Colors.red), textAlign: TextAlign.center,),
                Text('Si usted tiene algun tipo de intolerancia, pregunte al camarero/a sobre las guarniciones',
                  style: TextStyle(color: Colors.red), textAlign: TextAlign.center,),
                Text('Pa i entreteniment 1€ per Persona',
                    textAlign: TextAlign.center,),
                Text(' Els preus tenen inclòs l’IVA 10%',
                  textAlign: TextAlign.center,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
