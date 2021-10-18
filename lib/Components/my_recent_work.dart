import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentWork extends StatelessWidget {
  final List<String> myWorkUrl = [
    'https://mattfarley.ca/img/projects/wfdesignbuild.png',
    'https://mattfarley.ca/img/projects/awg2020.png',
    'https://mattfarley.ca/img/projects/chronicled.png',
    'https://mattfarley.ca/img/projects/glcsolutions.png',
    'https://mattfarley.ca/img/projects/coupal.png',
    'https://mattfarley.ca/img/projects/wedlerengineering.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'My Recent Work',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  'Here are a few design projects I\'ve worked on recently. Want to see more? ',
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Flexible(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Email me',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF7510F7),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 1.5, maxCrossAxisExtent: 500.0),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(myWorkUrl[index]),
                    ),
                  ),
                );
              },
              itemCount: 6,
              shrinkWrap: true,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            width: 300.0,
            child: TextButton(
              clipBehavior: Clip.hardEdge,
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 18.0),
                side: BorderSide(
                  color: Color.fromRGBO(117, 16, 247, 1.0),
                  width: 2,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sports_baseball_outlined,
                    color: Color.fromRGBO(117, 16, 247, 1.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'See more on Dribble',
                    style: TextStyle(
                      color: Color.fromRGBO(117, 16, 247, 1.0),
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
