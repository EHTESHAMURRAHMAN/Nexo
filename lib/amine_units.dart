import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AnimeUnitDetailPage extends StatelessWidget {
  const AnimeUnitDetailPage({super.key});

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
          'AMINE UNITS',
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
              'Amine Treating Units remove H2S and C  O2 from gas and liquid streams',
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
              '● Antifoams and Emulsion Breakers  \n● Activated Carbon  \n● Filtration \n● Coalescing \n● Rental vessels \n● Foam test kit \n● Amine solvents',
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
              '● Unit evaluation and reviews \n● Process Simulations  \n● Feed Gas contamination \n● testing Laboratory Analysis',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Amine Units 10 main problems',
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
                        'Foaming: Caused by contaminants like hydrocarbons, particulate matter, and pipeline chemicals. Leads to reduced gas-liquid contact efficiency, increased carryover, and operational instability.',
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
                    text: '2. Corrosion:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Results from acidic gases, oxygen ingress, high contactor budge temperatures and high rich amine loading.  Can damage equipment, increase maintenance costs, cause potential leaks, and create safety hazards.',
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
                    text: '3.  Solvent Degradation:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Occurs due to high regeneration temperatures, oxygen ingress, and reaction with acidic gases and O2 or CO2. Produces heat-stable salts and degradation products reducing amine efficiency and increasing operational costs.',
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
                    text: '4.  Heat Stable Salts:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Formed by the reaction of amines with acidic impurities. Reduce amine capacity, increase corrosion, and cause foaming.',
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
                    text: '5.  Solvent Losses:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Caused by mechanical losses, vaporization, foaming and entrainment in the treated gas. Increases operational costs and reduce system efficiency.',
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
                    text: '6.  Operational Upsets:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Due to variations in gas flow rates, pressure, and composition. Lead to reduced absorption efficiency, increased solvent losses, and potential equipment damage.',
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
                    text: '7. Hydrocarbon Solubility:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Presence of hydrocarbons in the gas stream contaminates the amine solution causes foaming and solvent losses in addition to downstream effects of hydrocarbons in the acid gas.',
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
                    text: '8. Temperature Control:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Inadequate contactor and heat exchanges causes improper temperature control. Results in reduced absorption efficiency, increased solvent degradation, and corrosion.',
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
                    text: '9. Filter and Carbon Bed Management:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Accumulation of contaminants and particulates. Reduces amine solution quality, increases foaming, and leads to equipment fouling.',
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
                    text: '10. Solvent Loading:  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff2a6ab9),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        'Overloading or underloading the amine solvent of acid gases can cause amine solvent degradation, corrosion, and inefficient removal of H₂S and CO₂.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
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
