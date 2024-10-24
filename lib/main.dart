import 'package:flutter/material.dart';

class Player {
  String name = 'hyeongeol';
  int age = 20;

  Player({required this.name, required this.age});
}

// 공식문서에서 widget 확인
void main() {
  runApp(const App());
}

// build 구현규칙
// material - android, cupertino - ios
// flutter는 모든것이 Widget으로 구성돼있다.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // appBar: AppBar(elevation: 99, centerTitle: true, title: Text()),
          backgroundColor: const Color(0XFF181818),
          body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      // 수직정렬
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end, // 수평정렬
                        children: [
                          const Text("Hey, Hyeongeol",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800)),
                          Text("Welcome back!",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                              ))
                        ],
                      )
                    ]),
                    const SizedBox(
                      height: 120,
                    ),
                    Text("Total Balance",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white.withOpacity(0.8),
                        )),
                    const SizedBox(height: 10),
                    Text("\$1,000,000",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.8),
                        )),
                    const SizedBox(height: 20),
                    Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(45)),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: const Text(
                              "Transfter",
                              style: TextStyle(fontSize: 20),
                            )),
                      )
                    ]),
                  ]))),
    );
  }
}
