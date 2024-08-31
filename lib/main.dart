import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nexo/amine_units.dart';
import 'package:nexo/contactPageDtails.dart';
import 'package:nexo/home.dart';
import 'package:nexo/molsieve_units.dart';
import 'package:nexo/splash.dart';
import 'package:nexo/technical_training.dart';
import 'package:nexo/teg_units.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

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
                          Get.to(const Homepage());
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
                    InkWell(
                        onTap: () async {
                          customerservice(context);
                        },
                        child: Container(
                            padding: const EdgeInsets.only(left: 80),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.person,
                                      color: Color(0xff2a6ab9), size: 30),
                                  SizedBox(width: 20),
                                  Text('CUSTOMER SERVICES',
                                      style: TextStyle(
                                          color: Color(0xff2a6ab9),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ]))),
                    const SizedBox(height: 20),
                    InkWell(
                        onTap: () async {
                          sales(context);
                        },
                        child: Container(
                            padding: const EdgeInsets.only(left: 80),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.satellite,
                                      color: Color(0xff2a6ab9), size: 30),
                                  SizedBox(width: 20),
                                  Text('SALES',
                                      style: TextStyle(
                                          color: Color(0xff2a6ab9),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ]))),
                    const SizedBox(height: 20),
                    InkWell(
                        onTap: () async {
                          engineering(context);
                        },
                        child: Container(
                            padding: const EdgeInsets.only(left: 80),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.settings,
                                      color: Color(0xff2a6ab9), size: 30),
                                  SizedBox(width: 20),
                                  Text('ENGINEERING',
                                      style: TextStyle(
                                          color: Color(0xff2a6ab9),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ]))),
                    const SizedBox(height: 20),
                    InkWell(
                        onTap: () async {
                          technology(context);
                        },
                        child: Container(
                            padding: const EdgeInsets.only(left: 80),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.track_changes,
                                      color: Color(0xff2a6ab9), size: 30),
                                  SizedBox(width: 20),
                                  Text('TECHNOLOGY',
                                      style: TextStyle(
                                          color: Color(0xff2a6ab9),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ]))),
                    const SizedBox(height: 20),
                    InkWell(
                        onTap: () async {
                          laboratory(context);
                        },
                        child: Container(
                            padding: const EdgeInsets.only(left: 80),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.troubleshoot_rounded,
                                      color: Color(0xff2a6ab9), size: 30),
                                  SizedBox(width: 20),
                                  Text('LABORATORY',
                                      style: TextStyle(
                                          color: Color(0xff2a6ab9),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ])))
                  ],
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () async {
                              Get.to(() => const AnimeUnitDetailPage());
                            },
                            child: Container(
                              height: 80,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: const Color(0xff2a6ab9),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.ad_units_outlined,
                                      color: Colors.white),
                                  Center(
                                      child: Text('AMINE UNITS',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13))),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () async {
                              Get.to(() => const MolsieveUnitsDetailPage());
                            },
                            child: Container(
                              height: 80,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: const Color(0xff2a6ab9),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.ad_units_outlined,
                                      color: Colors.white),
                                  Center(
                                      child: Text('MOLSIEVE UNITS',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13))),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                              onTap: () async {
                                Get.to(() => const TegUnitDetailPage());
                              },
                              child: Container(
                                  height: 80,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff2a6ab9),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.ad_units_outlined,
                                            color: Colors.white),
                                        Center(
                                            child: Text('TEG UNITS',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13)))
                                      ]))),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                              onTap: () async {
                                Get.to(() => const TechnicalTrainingPage());
                              },
                              child: Container(
                                  height: 80,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff2a6ab9),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.ad_units_outlined,
                                            color: Colors.white),
                                        Center(
                                            child: Text('TECHNICAL TRAINING',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13))),
                                      ]))),
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
