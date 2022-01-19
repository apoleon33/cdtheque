import 'package:flutter/material.dart';

class CdContainer extends StatelessWidget {
  const CdContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const rowNumber = 5;
    const columnNumber = 2;
    return Row(
      children: [
        Container(
          child: Cd("Astroworld", 'cd_example.png'),
          width: MediaQuery.of(context).size.width / rowNumber,
          height: MediaQuery.of(context).size.height / columnNumber,
        ),
        Container(
          child: Cd("We are Not your kind", 'cd_example.png'),
          width: MediaQuery.of(context).size.width / rowNumber,
          height: MediaQuery.of(context).size.height / columnNumber,
        ),
        Container(
          child: Cd("some other shit yk", 'cd_example.png'),
          width: MediaQuery.of(context).size.width / rowNumber,
          height: MediaQuery.of(context).size.height / columnNumber,
        ),
        Container(
          child: Cd("some other shit yk", 'cd_example.png'),
          width: MediaQuery.of(context).size.width / rowNumber,
          height: MediaQuery.of(context).size.height / columnNumber,
        ),
        Container(
          child: Cd("some other shit yk", 'cd_example.png'),
          width: MediaQuery.of(context).size.width / rowNumber,
          height: MediaQuery.of(context).size.height / columnNumber,
        ),
      ],
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xff393e46),
              borderRadius: BorderRadius.circular(15)),
        ));
  }
}
