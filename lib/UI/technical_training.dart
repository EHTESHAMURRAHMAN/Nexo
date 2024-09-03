import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class TechnicalTrainingPage extends StatelessWidget {
  const TechnicalTrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(CupertinoIcons.arrow_left_circle_fill,
              size: 30, color: Color(0xff2a6ab9)),
        ),
        title: const Text(
          'TECHNICAL TRAINING',
          style: TextStyle(
              fontSize: 18,
              color: Color(0xff2a6ab9),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'The technical Training programs from Nexo Solutions are objective, independent and based on 10+ years of global consulting and troubleshooting experience. The aim is to train operators, engineers and maintenance crews. There are five (5) different technical training possibilities.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '1. ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Onsite Technical Training. This where the technical training in amine treating units and dehydration units is delivered in person at a given plant, discussing key items, process details and current equipment installed at the plant.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '2. ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Open Technical Training. This technical training delivered in person and is offered a few times a year at different locations globally. The content presented is the most a complete lineup of topics in amine treating units and dehydration units.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '3. ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Closed Technical Training. This where the technical training in amine treating units and dehydration units is delivered in person and is closed to a given company. The training is delivered at corporate or regional offices and discusses key items, processes details and equipment installed or to be installed at the certain facilities.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: '4. ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text:
                        'Online Technical Training. The online technical training (NXU Nexo University) has more than 25 specialized courses in gas and liquid processing. Each course can be viewed for a period of time with a test and certificate at the of each course. Papers and videos are also available. The NXU training is hosted at: ',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'https://nxu.teachable.com/',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        final Uri url = Uri.parse('https://nxu.teachable.com/');
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch $url');
                        }
                      },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: '5. ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff2a6ab9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text:
                        'Webinars. Each last Thursday of the month, Nexo Solutions offers a live webinar on a number of different topics in gas and liquid processing. Check Nexo Solutions website for current webinars (',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'www.NexoSoluitons.com',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        final Uri url = Uri.parse('https://nexosolutions.com');
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch $url');
                        }
                      },
                  ),
                  const TextSpan(
                    text: ')',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'More information contact on Nexo Solutions ',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'support@NexoSolutions.com',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launchUrl(Uri(
                            scheme: 'mailto',
                            path: 'support@NexoSolutions.com'));
                      },
                  ),
                  const TextSpan(
                    text: ' or call \n',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextSpan(
                    text: '+1 (832) 510-8191',
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launchUrl(Uri(scheme: 'tel', path: '+18325108191'));
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
