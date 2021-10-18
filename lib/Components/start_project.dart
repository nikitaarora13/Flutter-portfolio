import 'package:flutter/material.dart';

class StartProject extends StatelessWidget {
  const StartProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              color: Colors.white,
              height: 70,
              width: double.infinity,
            ),
            Container(
              color: Color.fromRGBO(117, 16, 247, 1.0),
              height: 130,
              width: double.infinity,
            ),
          ],
        ),
        Container(
          height: 200,
          width: 1200,
          child: Card(
            color: Color(0xFF141C3A),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0)),
            child: Wrap(
              runAlignment: WrapAlignment.spaceEvenly,
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Text(
                  'Start a project',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Interested in working together? We should\nqueue up a chat. I’ll buy the coffee.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Let's do this",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 35),
                      primary: Color.fromRGBO(117, 16, 247, 1.0),
                      onSurface: Color.fromRGBO(117, 16, 247, 1.0),
                      side:
                          BorderSide(color: Color.fromRGBO(117, 16, 247, 1.0)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
