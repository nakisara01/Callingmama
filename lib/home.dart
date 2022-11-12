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
        title: const Text('Flutter Notification Demo'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: SizedBox(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '문자를 받고 싶은 분을 누르시면\n'
                        '   해당되는 분께 문자가 옵니다!!\n'
                        '         우리 어서 집에가요!!',
                    style: TextStyle(fontSize: 15),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await service.showScheduledNotification(
                        id: 0,
                        title: '엄마',
                        body: '아들, 언제 들어와~ 빨리빨리 들어오지~?',
                        seconds: 10,
                      );
                    },
                    child: const Text('어머니께 연락 받기'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await service.showScheduledNotification(
                        id: 0,
                        title: '아빠',
                        body: '아들, 이제 들어와라  아빠 안잔다',
                        seconds: 10,
                      );
                    },
                    child: const Text('아버지께 연락 받기'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await service.showScheduledNotification(
                        id: 0,
                        title: '내사랑',
                        body: '자기야 집에 안가??',
                        seconds: 10,
                      );
                    },
                    child: const Text('연인에게 연락 받기'),
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