import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:nexo_new/Details/contactPageDtails.dart';
import 'package:nexo_new/UI/amine_units.dart';
import 'package:nexo_new/UI/molsieve_units.dart';
import 'package:nexo_new/UI/technical_training.dart';
import 'package:nexo_new/UI/teg_units.dart';
import 'package:nexo_new/Details/contact_List.dart';
import 'package:nexo_new/Utils/home_Column.dart';
import 'package:nexo_new/Utils/Home_grid.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
        ),
        backgroundColor: const Color(0xFF2A6AB9),
        elevation: 0,
        title: const Text(
          'Nexo Solutions',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Row(
                children: [
                  Expanded(
                    child: _buildHeaderCard(
                      context,
                      onTap: () => nxuPopup(),
                      child: Image.asset(
                        'assets/nexo.png',
                        color: Colors.white,
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildHeaderCard(
                      context,
                      onTap: () => Get.to(const ContactList()),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, color: Colors.white, size: 24),
                          SizedBox(width: 8),
                          Text(
                            'Contacts',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // Services Section
              const Text(
                'Our Services',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2A6AB9),
                ),
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  MainColumn(
                    onPressed: () => customerservice(context),
                    title: 'Customer Services',
                    icons: Icons.person,
                  ),
                  const SizedBox(height: 16),
                  MainColumn(
                    onPressed: () => sales(context),
                    title: 'Sales',
                    icons: Icons.satellite,
                  ),
                  const SizedBox(height: 16),
                  MainColumn(
                    onPressed: () => engineering(context),
                    title: 'Engineering',
                    icons: Icons.settings,
                  ),
                  const SizedBox(height: 16),
                  MainColumn(
                    onPressed: () => technology(context),
                    title: 'Technology',
                    icons: Icons.track_changes,
                  ),
                  const SizedBox(height: 16),
                  MainColumn(
                    onPressed: () => laboratory(context),
                    title: 'Laboratory',
                    icons: Icons.troubleshoot_rounded,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // Units Section
              const Text(
                'Our Units',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2A6AB9),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeGrid(
                    onPressed: () => Get.to(() => const AnimeUnitDetailPage()),
                    title: 'Amine Units',
                    icons: Icons.ad_units_outlined,
                  ),
                  const SizedBox(width: 12),
                  HomeGrid(
                    onPressed:
                        () => Get.to(() => const MolsieveUnitsDetailPage()),
                    title: 'Molsieve Units',
                    icons: Icons.ad_units_outlined,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeGrid(
                    onPressed: () => Get.to(() => const TegUnitDetailPage()),
                    title: 'TEG Units',
                    icons: Icons.ad_units_outlined,
                  ),
                  const SizedBox(width: 12),
                  HomeGrid(
                    onPressed:
                        () => Get.to(() => const TechnicalTrainingPage()),
                    title: 'Technical Training',
                    icons: Icons.ad_units_outlined,
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderCard(
    BuildContext context, {
    required VoidCallback onTap,
    required Widget child,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF2A6AB9), Color(0xFF1E4E8C)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF2A6AB9).withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(child: child),
      ),
    );
  }

  void nxuPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            'Visit Our Website',
            style: TextStyle(
              color: Color(0xFF2A6AB9),
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          content: const Text(
            'Would you like to open the Nexo Solutions website?',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final Uri url = Uri.parse('https://nexosolutions.com');
                if (!await launchUrl(
                  url,
                  mode: LaunchMode.externalApplication,
                )) {
                  throw Exception('Could not launch $url');
                }
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2A6AB9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
              child: const Text(
                'Open Website',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
