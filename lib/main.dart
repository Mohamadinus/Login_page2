import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Tween<double> _scaleTween = Tween<double>(begin: 1, end: 2);

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: TweenAnimationBuilder(
              tween: _scaleTween,
              duration: const Duration(milliseconds: 600),
              // ignore: non_constant_identifier_names
              builder: (Context, scale, child) {
                return Transform.scale(
                  scale: 1,
                  child: child,
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/sign in.jpg"))),
                  ),
                  Positioned(
                      child: Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 33)),
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 4.0,
                                )
                              ],
                            ),
                            child: const TextField(
                              textAlign: TextAlign.justify,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "  Email or phone number"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 4.0,
                                )
                              ],
                            ),
                            child: const TextField(
                              textAlign: TextAlign.justify,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "  Password"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 4.0,
                                )
                              ],
                            ),
                            child: const TextField(
                              textAlign: TextAlign.justify,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " conform Password"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Container(
                              height: 47,
                              width: 460,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1.0,
                                    spreadRadius: 2.0,
                                  )
                                ],
                              ),
                              child: const Center(
                                  child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ))),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                        child: Row(children: const [
                      Padding(
                          padding: EdgeInsets.only(
                        left: 150,
                      )),
                      Text(
                        "already a user? ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        "Sign in ",
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ])),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
