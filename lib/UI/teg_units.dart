import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class TegUnitDetailPage extends StatelessWidget {
  const TegUnitDetailPage({super.key});

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
                size: 30, color: Color(0xff2a6ab9))),
        title: const Text(
          'TEG UNITS',
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
              'Triethylene Glycol (TEG) Units remove H2O (Water) from gas and liquid streams',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Products Offered',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff2a6ab9),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              '● Antifoams \n● Corrosion inhibitors \n● Filtration \n● Coalescing \n● Rental vessels \n● Activated Carbon \n● TEG Solvent',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Services Offered',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2a6ab9)),
            ),
            const SizedBox(height: 6),
            const Text(
              '● Unit evaluation and reviews \n● Process Simulations  \n● Feed Gas contamination \n● Laboratory Analysis',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'TEG Units 10 main problems:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2a6ab9)),
            ),
            const SizedBox(height: 6),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '1. Foaming:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Caused by contaminants such as hydrocarbons, salts, and degradation products. Leads to reduced gas-liquid contact efficiency and glycol losses through carryover.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '2. Glycol Degradation:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Results from high temperatures, oxygen ingress, and reaction with impurities. Produces degradation products like organic acids, reducing glycol effectiveness and increasing corrosion.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '3.  Corrosion:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Caused by acidic gases, oxygen ingress, and glycol degradation products. Damages equipment, increases maintenance costs, and creates safety hazards.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '4.  Glycol Losses:   ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Occur due to vaporization, entrainment, leaks, and improper operation. Increase operational costs and reduce system efficiency .',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '5.  Contamination:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Introduction of hydrocarbons, salts, and particulates into the glycol solution. Causes foaming, fouling, and reduced dehydration efficiency.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '6.  Heat Exchange Efficiency:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Inadequate heat transfer due to fouling or improper design. Reduces regeneration efficiency and increases energy consumption.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '7. Foaming:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Accumulation of contaminants leads to foaming and fouling of equipment. Reduces glycol regeneration efficiency and increases maintenance requirements.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '8. Regeneration Issues:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Inadequate regeneration can leave residual water in the glycol. Reduces the dehydration capacity and efficiency of the TEG unit.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '9. Gas Loading:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Variations in gas flow rates, pressure, and composition. Can cause operational instability and reduced dehydration efficiency.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '10. Temperature Control:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Inadequate temperature management in the contactor and regenerator. Results in inefficient water removal and increased glycol degradation.',
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
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
