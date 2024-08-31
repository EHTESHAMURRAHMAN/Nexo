import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class MolsieveUnitsDetailPage extends StatelessWidget {
  const MolsieveUnitsDetailPage({super.key});

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
          'MOLSIEVE UNITS',
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
              'Molecular Sieves Dehydration Units remove H2O (Water) from gas and liquid streams',
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
              '● Filtration \n● Coalescing \n● Rental vessels \n● Activated Carbon \n● Molecular Sieves 3A, 4A and 13X',
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
              'Molecular Sieve Units 10 main problems:',
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
                    text: '1. Sieve Contamination:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Contaminants such as heavy hydrocarbons, compressor oils, and other impurities can foul the molecular sieves, reducing their adsorption capacity and efficiency.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 6),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '2. Attrition and Breakage:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Physical degradation of the molecular sieve beads due to mechanical stress, thermal cycling, or improper handling can lead to increased pressure drop and reduced bed life.',
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
                    text: '3.  Pressure Drop:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'A high-pressure drop across the sieve bed can result from sieve attrition, bed settling, or fines accumulation. This can lead to operational inefficiencies and increased energy consumption.',
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
                    text: '4.  Regeneration Issues:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Inadequate regeneration can leave residual water in the sieve bed, reducing its adsorption capacity. Overheating during regeneration can damage the sieves, while insufficient heating can lead to incomplete water desorption.',
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
                    text: '5.  Channeling and Maldistribution:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Poor bed packing or distribution of the gas flow can cause channeling, where the gas bypasses sections of the bed. This reduces the effective use of the sieve material and can lead to premature breakthrough.',
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
                    text: '6.  Thermal Management:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Temperature control during adsorption and regeneration is crucial. Excessive temperatures can degrade the sieves, while insufficient temperatures can impair water removal.',
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
                    text: '7. Chemical Attack:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Certain chemicals in the gas stream, such as acids or bases, can chemically attack the molecular sieves, causing degradation and loss of adsorption capacity.',
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
                    text: '8. Hydrothermal Stability:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Exposure to steam or high humidity during regeneration or process upsets can affect the structural integrity of the molecular sieves, leading to reduced performance.',
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
                    text: '9. Leakage and Mechanical Failures:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Leaks in the system, faulty valves, or mechanical failures can disrupt the operation and affect the efficiency of the dehydration process.',
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
                    text: '10. Operational Upsets:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Changes in gas flow rates, pressure, and temperature can impact the adsorption performance and the overall efficiency of the molecular sieve unit.',
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
