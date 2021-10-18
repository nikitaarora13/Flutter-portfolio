import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'role_widget_template.dart';

// flutter run -d chrome --web-renderer html
// flutter build web --web-renderer canvaskit

class Tools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromRGBO(117, 16, 247, 1.0),
          height: 100,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: IntrinsicHeight(
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: RoleWidgetTemplate(
                                imageUrl:
                                    'https://mattfarley.ca/img/icons/designer.svg',
                                role: 'Designer',
                                roleDescription:
                                    'I value simple content structure, clean design patterns, and thoughtful interactions.',
                                whatIDoTitle: 'Things I enjoy designing:',
                                whatIDo: 'UX, UI, Web, Mobile, Apps, Logos',
                                tool: 'Design Tools:',
                                toolNames:
                                    'Balsamiq Mockups\nFigma\nInvision\nMarvel\nPen & Paper\nSketch\nWebflow\nZeplin',
                              ),
                            ),
                            VerticalDivider(
                              thickness: 1,
                              color: Color(0xFFC2C0C0FF),
                            ),
                            Expanded(
                              child: RoleWidgetTemplate(
                                imageUrl:
                                    'https://mattfarley.ca/img/icons/frontend.svg',
                                role: 'Front-end Developer',
                                roleDescription:
                                    'I like to code things from scratch, and enjoy bringing ideas to life in the browser.',
                                whatIDoTitle: 'Languages I speak:',
                                whatIDo: 'HTML, Pug, Slim, CSS, Sass, Less',
                                tool: 'Dev Tools:',
                                toolNames:
                                    'Atom\nBitbucket\nBootstrap\nBulma\nCodekit\nCodepen\nGithub\nGitlab\nTerminal',
                              ),
                            ),
                            VerticalDivider(
                              thickness: 1,
                              color: Color(0xFFC2C0C0FF),
                            ),
                            Expanded(
                              child: RoleWidgetTemplate(
                                imageUrl:
                                    'https://mattfarley.ca/img/icons/mentor.svg',
                                role: 'Mentor',
                                roleDescription:
                                    'I genuinely care about people, and love helping fellow designers work on their craft.',
                                whatIDoTitle: 'Experiences I draw from:',
                                whatIDo: 'UX/UI, Product design, Freelancing',
                                tool: 'Mentor Stats:',
                                toolNames:
                                    '5 years experience\n26 short courses\n42 bootcamps\n125+ students\n1,400+ mentor sessions\n60+ group critiques\n12,000+ comments',
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
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
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
