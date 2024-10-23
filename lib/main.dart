import 'package:flutter/material.dart';

class Player {
  String name = 'hyeongeol';
  int age = 20;

  Player({required this.name, required this.age});
}

// 공식문서에서 widget 확인
void main() {
  var nico = Player(name: 'nico', age: 20);
  runApp(App());
}

// build 구현규칙
// material - android, cupertino - ios
// flutter는 모든것이 Widget으로 구성돼있다.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // appBar: AppBar(elevation: 99, centerTitle: true, title: Text()),
          backgroundColor: Color(0XFF181818),
          body: Column(children: [
            SizedBox(height: 100),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Hey, Selena",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800)),
                  Text("Welcome back!",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 18))
                ],
              )
            ])
          ])),
    );
  }
}
