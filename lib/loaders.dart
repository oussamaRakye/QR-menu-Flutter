import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'card_plate.dart';

class Loader{
  static List<Widget> primers = [];
  static List<Widget> peixos = [];
  static List<Widget> carns = [];

  static void loadFiles(){
    primers = getPlates('primers');
    peixos = getPlates('peixos');
    carns = getPlates('carns');
  }


  static List<Widget> getPlates(String file) {
    List<Widget> listWidgets = [];
    loadAsset('assets/$file.csv').then((dynamic output) {
      List<String> list = output.split('\n');
      for (int i = 1; i < list.length - 1; i++) {
        List<String> sublist = list[i].split(';');
        listWidgets.add(CardPlate(
          name: sublist[0],
          ingredients: sublist[1],
          price: sublist[2],
        ));
      }
    });

    return listWidgets;
  }

  static Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}