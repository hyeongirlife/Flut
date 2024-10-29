import 'package:flut/widgets/button.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            text: "Transfer",
                            bgColor: Colors.amber,
                            textColor: Colors.black,
                          ),
                          Button(
                            text: "Request",
                            bgColor: Color(0xFF1F2123),
                            textColor: Colors.white,
                          )
                        ]),
                    const SizedBox(height: 100),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Wallets",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            )),
                        Text("View All",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ))
                      ],
                    ),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // !! command + . => 전구
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Euro",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                    )),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text("6 428",
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.5),
                                          fontSize: 20,
                                        )),
                                    SizedBox(width: 5),
                                    Text("EUR",
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.5),
                                          fontSize: 18,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            Transform.scale(
                              scale: 2.2,
                              child: Transform.translate(
                                offset: const Offset(-5, 11),
                                child: const Icon(Icons.euro_rounded,
                                    color: Colors.white, size: 98),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]))),
    );
  }
}
