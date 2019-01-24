import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200.0,
                maxWidth: 200.0
              ),
              child: Container(
                color: Colors.blueGrey,
              ),
            )
          ],
        ),
      );
    }
}

class StackDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)
              )
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Icon(Icons.ac_unit,color: Colors.white,size: 32.0),
            ),
          ),
          Positioned(
            right: 20.0,
            top: 20.0,
            child: Icon(Icons.ac_unit,color: Colors.white,size: 32.0),
          )
        ],
      );
    }
}

class IconBage extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBage(this.icon,{
    this.size = 32.0
  });

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        child: Icon(icon,size: size,color: Colors.white),
        width: size + 60,
        height: size + 60,
        color: Color.fromRGBO(3, 54, 255, 1.0),
      );
    }
}