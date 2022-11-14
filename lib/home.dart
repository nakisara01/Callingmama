import 'package:flutter/material.dart';
//import 'package:flutter_local_notification/services/local_notification_service.dart';

import 'local_notification_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final LocalNotificationService service;

  @override
  void initState() {
    service = LocalNotificationService();
    service.intialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        // title: const Text(''),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(208, 227, 235, 1),
            ),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '문자를 받고 싶은 분을 누르시면\n'
                    '  해당되는 분께 문자가 옵니다!\n'
                    '        우리 어서 집에가요!!',
                    style: TextStyle(
                      fontFamily: 'DoHyeonRegular',
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black, width: 3),
                            //set border radius to 50% of square height and width
                            image: DecorationImage(
                              image: AssetImage("images/mommy.png"),
                              fit: BoxFit.cover, //change image fill type
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          height: 60,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () async {
                              await service.showScheduledNotification(
                                id: 0,
                                title: '엄마',
                                body: '아들, 언제 들어와~ 빨리빨리 들어오지~?',
                                seconds: 10,
                              );
                            },
                            child: Text('어머니께 연락 받기'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.indigoAccent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                //side: BorderSide(color: Colors.red) // border line color
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black, width: 3),
                            //set border radius to 50% of square height and width
                            image: DecorationImage(
                              image: AssetImage("images/daddy.png"),
                              fit: BoxFit.cover, //change image fill type
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          height: 60,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () async {
                              await service.showScheduledNotification(
                                id: 0,
                                title: '아빠',
                                body: '아들, 10분 준다. 빨리 들어와라.',
                                seconds: 10,
                              );
                            },
                            child: Text('아버지께 연락 받기'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.indigoAccent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                //side: BorderSide(color: Colors.red) // border line color
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black, width: 3),
                            //set border radius to 50% of square height and width
                            image: DecorationImage(
                              image: AssetImage("images/couple.png"),
                              fit: BoxFit.cover, //change image fill type
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          height: 60,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () async {
                              await service.showScheduledNotification(
                                id: 0,
                                title: '울 자기',
                                body: '자기야~ 언제까지 밖에 있을거야?',
                                seconds: 10,
                              );
                            },
                            child: Text('연인에게 연락 받기'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.indigoAccent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                //side: BorderSide(color: Colors.red) // border line color
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
