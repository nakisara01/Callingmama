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
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(left: 100, right: 100, top:100),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: Image.asset('images/female.png')),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('여자는 여기 Click!'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red) // border line color
                    )
                ),
              ),
            )
          ],
        ),
      ),
      //SizedBox(height: 200),
          /*Positioned(child:
            Text("남자는 여기 Click!",
            style: TextStyle(fontFamily: 'DoHyeonRegular',
            fontSize: 20
            ),
            ),
          ),*/
      Positioned(
        right: 30,
        top: 400,
        child: Column(
          children: [            ElevatedButton(
            onPressed: () {},
            child: Text('남자는 여기 Click!'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    //side: BorderSide(color: Colors.red) // border line color
                  )
              ),
            ),
          ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(left: 100, right: 100, bottom:100),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: Image.asset('images/male.png')),
            ),
          ],
        ),
      ),
    ]));
  }
}
