import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Components/colab.dart';
import 'package:portfolio/Components/companies.dart';
import 'package:portfolio/Components/footer.dart';
import 'package:portfolio/Components/my_recent_work.dart';
import 'package:portfolio/Components/project_card.dart';
import 'package:portfolio/Components/start_project.dart';
import 'package:portfolio/Components/startup_projects.dart';
import 'package:portfolio/Components/testimonials.dart';
import 'package:portfolio/Components/tools.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    child:
                        Image.network('https://mattfarley.ca/img/mf-logo.svg'),
                  ),
                  Spacer(),
                  Text('Mentorship'),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      side: BorderSide(
                        color: Color.fromRGBO(117, 16, 247, 1.0),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Say Hello',
                        style: TextStyle(
                          color: Color.fromRGBO(117, 16, 247, 1.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Text(
              'Designer, Front-end Developer & Mentor',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'I design and code beautifully simple things, and I love what I do.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              width: 170.0,
              height: 170.0,
              child: Image.network('https://mattfarley.ca/img/mf-avatar.svg'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.network('https://mattfarley.ca/img/hero.svg'),
            ),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(117, 16, 247, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200.0,
                    ),
                    Text(
                      'Hi, I’m Matt. Nice to meet you.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      width: 650.0,
                      child: Text(
                        'Since beginning my journey as a freelance designer nearly 10 years ago, I\'ve done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I\'m quietly confident, naturally curious, and perpetually working on improving my chops one design problem at a time.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Tools(),
            SizedBox(
              height: 50,
            ),
            RecentWork(),
            Divider(
              thickness: 1.0,
            ),
            SizedBox(
              height: 100.0,
            ),
            Companies(),
            SizedBox(
              height: 100.0,
            ),
            StartupProjects(),
            ProjectCards(),
            SizedBox(
              height: 80.0,
            ),
            Colab(),
            Testimonials(),
            StartProject(),
            Footer()
          ],
        ),
      ),
    );
  }
}
