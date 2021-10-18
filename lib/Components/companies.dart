import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Companies extends StatelessWidget {
  final List<String> companiesLogo = [
    'https://mattfarley.ca/img/logos/briteweb.svg',
    'https://mattfarley.ca/img/logos/goodkind.svg',
    'https://mattfarley.ca/img/logos/redstamp.svg',
    'https://mattfarley.ca/img/logos/domain7.svg',
    'https://mattfarley.ca/img/logos/designlab.png',
    'https://mattfarley.ca/img/logos/chronicled.svg',
    'https://mattfarley.ca/img/logos/bldrs.png',
    'https://mattfarley.ca/img/logos/serpmetrics.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'I\'m proud to have collaborated with some',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          'awesome companies:',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 80.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 2.9, maxCrossAxisExtent: 350.0),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(companiesLogo[index]),
                  ),
                ),
              );
            },
            itemCount: 8,
            shrinkWrap: true,
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}
