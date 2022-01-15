import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xff222831),
            body: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Container(
                      child: Image.asset('cd_example.png'),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),

                      height: 300,
                      width: 300,
                      //BoxShadow(color: Colors.green, spreadRadius: 3)
                      decoration: BoxDecoration(
                          color: const Color(0xff393e46),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Container(
                      child: Image.asset('cd_example.png'),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),

                      height: 300,
                      width: 300,
                      //BoxShadow(color: Colors.green, spreadRadius: 3)
                      decoration: BoxDecoration(
                          color: const Color(0xff393e46),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Container(
                      child: Image.asset('cd_example.png'),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),

                      height: 300,
                      width: 300,
                      //BoxShadow(color: Colors.green, spreadRadius: 3)
                      decoration: BoxDecoration(
                          color: const Color(0xff393e46),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Container(
                      child: Image.asset('cd_example.png'),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),

                      height: 300,
                      width: 300,
                      //BoxShadow(color: Colors.green, spreadRadius: 3)
                      decoration: BoxDecoration(
                          color: const Color(0xff393e46),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                  ),
                ],
              ),
            )));
  }
}
