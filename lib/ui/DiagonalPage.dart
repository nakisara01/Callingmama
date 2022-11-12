//import 'package:callingmama/main.dart';
import 'package:flutter/material.dart';
import '../home.dart';
import 'Widget/ButtonEachTwoRightTriangleWithDivider.dart';

class DiagonalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      ButtonEachTwoRightTriangleWithDivider(
        bottomLeftTriangleBackgroundColor: Color.fromRGBO(208, 227, 235, 1),
        dividerColor: Colors.blueAccent,
        height: double.infinity,
        width: double.infinity,
        topRightTriangleDecoration: BoxDecoration(
          color: Color.fromRGBO(249, 222, 202, 1),
        ),
        topRightTriangleOnTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        bottomLeftTriangleOnTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
      ),
      Positioned(
        left: 40,
        top: 10,
        child: Container(
          height: 200,
          width: 200,
          margin: EdgeInsets.all(100),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Image.asset('images/female.png')),
        ),
      ),
      //SizedBox(height: 200),
          Positioned(child:
            Center(
              child: Text("아들~ 이면 왼쪽하단을 선택하슈\n딸~ 이면 오른쪽상단을 선택"),
            ),
          ),
      Positioned(
        right: 30,
        top: 350,
        child: Container(
          height: 200,
          width: 200,
          margin: EdgeInsets.all(100),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Image.asset('images/male.png')),
        ),
      ),
    ]));
  }
}
