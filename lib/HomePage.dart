import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nexo/Utils/Home_grid.dart';
import 'package:nexo/Utils/home_Column.dart';
import 'package:nexo/UI/amine_units.dart';
import 'package:nexo/Details/contactPageDtails.dart';
import 'package:nexo/Details/contact_List.dart';
import 'package:nexo/UI/molsieve_units.dart';
import 'package:nexo/UI/technical_training.dart';
import 'package:nexo/UI/teg_units.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: InkWell(
                        onTap: () async {
                          final Uri url =
                              Uri.parse('https://nexosolutions.com');
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: Container(
                          height: 70,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                              color: const Color(0xff2a6ab9),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xff2a6ab9).withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(
                                      3, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            'assets/nexo.png',
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width / 2.5,
                          ),
                        )),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          Get.to(const ContactList());
                        },
                        child: Container(
                            height: 70,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            decoration: BoxDecoration(
                                color: const Color(0xff2a6ab9),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff2a6ab9)
                                        .withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(
                                        3, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person, color: Colors.white),
                                  Center(
                                      child: Text('Contacts',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17)))
                                ]))),
                  )
                ]),
                const SizedBox(height: 20),
                Column(
                  children: [
                    const SizedBox(height: 20),
                    MainColumn(
                        onPressed: () {
                          customerservice(context);
                        },
                        title: 'CUSTOMER SERVICES',
                        icons: Icons.person),
                    const SizedBox(height: 20),
                    MainColumn(
                        onPressed: () {
                          sales(context);
                        },
                        title: 'SALES',
                        icons: Icons.satellite),
                    const SizedBox(height: 20),
                    MainColumn(
                        onPressed: () {
                          engineering(context);
                        },
                        title: 'ENGINEERING',
                        icons: Icons.settings),
                    const SizedBox(height: 20),
                    MainColumn(
                        onPressed: () {
                          technology(context);
                        },
                        title: 'TECHNOLOGY',
                        icons: Icons.track_changes),
                    const SizedBox(height: 20),
                    MainColumn(
                        onPressed: () {
                          laboratory(context);
                        },
                        title: 'LABORATORY',
                        icons: Icons.troubleshoot_rounded),
                  ],
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeGrid(
                          onPressed: () {
                            Get.to(() => const AnimeUnitDetailPage());
                          },
                          title: 'AMINE UNITS',
                          icons: Icons.ad_units_outlined,
                        ),
                        const SizedBox(width: 10),
                        HomeGrid(
                          onPressed: () {
                            Get.to(() => const MolsieveUnitsDetailPage());
                          },
                          title: 'MOLSIEVE UNITS',
                          icons: Icons.ad_units_outlined,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeGrid(
                          onPressed: () {
                            Get.to(() => const TegUnitDetailPage());
                          },
                          title: 'TEG UNITS',
                          icons: Icons.ad_units_outlined,
                        ),
                        const SizedBox(width: 10),
                        HomeGrid(
                          onPressed: () {
                            Get.to(() => const TechnicalTrainingPage());
                          },
                          title: 'TECHNICAL TRAINING',
                          icons: Icons.ad_units_outlined,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          )),
    );
  }

  nxuPOPup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Do you want to open website?',
              style: TextStyle(
                  color: Color(0xff2a6ab9),
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          content: const Text('Choose an option'),
          actions: [
            TextButton(
              onPressed: () async {
                final Uri url = Uri.parse('https://nexosolutions.com');
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              child: const Text('Open Website',
                  style: TextStyle(
                      color: Color(0xff2a6ab9),
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Cancel',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
          ],
        );
      },
    );
  }
}
