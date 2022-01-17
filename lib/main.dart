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
    return MaterialApp(
      home: Cd("Astroworld", 'cd_example.png'),
    );
  }
}

// the Cd class
class Cd extends StatelessWidget {
  final String cdlist;
  final String coverAlbum;
  Cd(this.cdlist, this.coverAlbum);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff222831),
        body: Container(
          child: Column(
            children: [
              Image.asset(
                coverAlbum,
              ),
              FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    cdlist,
                    textAlign: TextAlign.justify,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 30),
                  )),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.width * 0.2,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xff393e46),
              borderRadius: BorderRadius.circular(15)),
        ));
  }
}
