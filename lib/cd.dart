import 'package:flutter/material.dart';

// the Cd class
class Cd extends StatelessWidget {
  const Cd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff222831),
        body: Container(
          child: Column(
            children: [
              Image.asset('cd_example.png'),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    "cool cd",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
              color: const Color(0xff393e46),
              borderRadius: BorderRadius.circular(15)),
        ));
  }
}
