import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexo/contactPageDtails.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
          'NEXO EMPLOYEES LIST',
          style: TextStyle(
              fontSize: 18,
              color: Color(0xff2a6ab9),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return Column(
              children: [
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text(contact.name),
                  subtitle: Text(contact.position),
                  isThreeLine: true,
                  leading: Text(
                    '${index + 1}.',
                    style: const TextStyle(fontSize: 17),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () => _sendEmail(contact.email),
                          icon: const Icon(Icons.email_outlined,
                              color: Colors.red)),
                      IconButton(
                          onPressed: () => _makePhoneCall(contact.call),
                          icon: const Icon(Icons.call_outlined,
                              color: Color(0xff2a6ab9))),
                    ],
                  ),
                ),
                const Divider()
              ],
            );
          },
        ),
      ),
    );
  }

  void _makePhoneCall(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  void _sendEmail(String emailAddress) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not send email to $emailAddress';
    }
  }
}

class Contact {
  final String name;
  final String position;
  final String call;
  final String email;

  Contact(
      {required this.name,
      required this.position,
      required this.call,
      required this.email});
}
