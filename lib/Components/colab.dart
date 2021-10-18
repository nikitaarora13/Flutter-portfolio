import 'package:flutter/material.dart';

class Colab extends StatelessWidget {
  const Colab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Interested in collaborating or investing?',
            style: TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'I’m always open to discussing product design work or partnership opportunities.',
            style: TextStyle(fontSize: 15.0),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
            child: Column(
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more on Dribble',
                    ),
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 22.0, horizontal: 30),
                        textStyle: TextStyle(fontSize: 22),
                        primary: Color.fromRGBO(117, 16, 247, 1.0),
                        onSurface: Color.fromRGBO(117, 16, 247, 1.0),
                        side: BorderSide(
                            color: Color.fromRGBO(117, 16, 247, 1.0)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}
