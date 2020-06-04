import 'package:flutter/material.dart';

class CardPlate extends StatefulWidget {

  final String name, ingredients, price;

  CardPlate({this.ingredients,this.price,this.name});

  @override
  _CardPlateState createState() => _CardPlateState();
}

class _CardPlateState extends State<CardPlate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        child: Padding(
            padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        widget.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                    Text(
                        widget.ingredients,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black54
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  widget.price,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
