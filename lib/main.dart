import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Cd());
  }
}

//create new class for "home" property of MaterialApp()
class Cd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff222831),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Container(
                      child: Image.asset(
                        'cd_example.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.4,
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),

                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.4,
                      //BoxShadow(color: Colors.green, spreadRadius: 3)
                      decoration: BoxDecoration(
                          color: const Color(0xff393e46),
                          borderRadius: BorderRadius.circular(15)),
                    )),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
