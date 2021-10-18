import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 80.0,
          ),
          Text(
            'Testimonials',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'People I\'ve worked with have said some nice things...',
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(
            height: 50.0,
          ),
          CircleAvatar(
            child:
                Image.network('https://mattfarley.ca/img/avatars/pascal.png'),
            radius: 50.0,
          ),
          SizedBox(
            height: 80.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.50,
              child: Text(
                '“Matt was a real pleasure to work with and we look forward to working with him again. He’s definitely the kind of designer you can trust with a project from start to finish.”',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            'Pascal Tremblay',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Creative Lead, Good Kind',
            style: TextStyle(
              fontSize: 15.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
