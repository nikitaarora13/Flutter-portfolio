import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_data.dart';

class ProjectCards extends StatelessWidget {
  final List<CardData> cardContent = [
    CardData(
        projectDesc:
            'Next level plug and play chassis systems for custom do-it-yourself lightsaber builds.',
        projectLogo: 'https://mattfarley.ca/img/logos/kybercore.svg',
        projectUrl: 'In development'),
    CardData(
        projectDesc:
            'Simple feedback and engagement tools for teams that want to build and ship winning products.',
        projectLogo: 'https://mattfarley.ca/img/logos/houston.svg',
        projectUrl: 'In development'),
    CardData(
        projectDesc:
            'A powerful, easy-to-configure form backend for designers and developers. No coding required.',
        projectLogo: 'https://mattfarley.ca/img/logos/basin.svg',
        projectUrl: 'www.usebasin.com'),
    CardData(
        projectDesc:
            'Next level plug and play chassis systems for custom do-it-yourself lightsaber builds.',
        projectLogo: 'https://mattfarley.ca/img/logos/ylbuilders.svg',
        projectUrl: 'www.ylbuilders.com'),
    CardData(
        projectDesc:
            'A collaborative tool for creating simple, effective user personas for design projects.',
        projectLogo: 'https://mattfarley.ca/img/logos/userforge.svg',
        projectUrl: 'www.userforge.com'),
    CardData(
        projectDesc:
            'Next level plug and play chassis systems for custom do-it-yourself lightsaber builds.',
        projectLogo: 'https://mattfarley.ca/img/logos/dovetail.svg',
        projectUrl: 'Shutdown in 2017'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: const Color.fromRGBO(117, 16, 247, 1.0),
            height: 150,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 500,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) {
                  return Cards(content: cardContent[index]);
                },
                itemCount: 6,
                shrinkWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final CardData content;
  Cards({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.8), //(x,y)
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.network(
            content.projectLogo,
            width: 130.0,
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              content.projectDesc,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              content.projectUrl,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(117, 16, 247, 1.0), fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
