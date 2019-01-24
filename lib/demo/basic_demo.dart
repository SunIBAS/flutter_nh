import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        // color: Colors.grey[100],
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2775279431,1981557515&fm=27&gp=0.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.hardLight
            )
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(Icons.pool,size: 32.0,color: Colors.white),
              // color: Color.fromRGBO(3, 54, 255, 1.0),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid
                ),
                // borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(6.0, 7.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 1.0,
                    spreadRadius: 0.0
                  )
                ],
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(7,102,255,1.0),
                    Color.fromRGBO(3,28,128,1.0),
                  ]
                )
              ),
            )
          ],
        ),
      );
    }
}

class RichTextDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return RichText(
        text: TextSpan(
          text: 'sunibas',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100
          ),
          children: [
            TextSpan(
              text: '.cn',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0
              )
            )
          ]
        ),
      );
    }
}

class TextDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Text(
        'hahha',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0
        ),
      );
    }
}