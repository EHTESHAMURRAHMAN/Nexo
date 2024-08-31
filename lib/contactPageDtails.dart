import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

customerservice(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('CUSTOMER SERVICES',
            style: TextStyle(
                color: Color(0xff2a6ab9),
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        content: const Text('Choose an option'),
        actions: [
          TextButton(
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber('+1(832)797-5751');
            },
            child: const Text('Call',
                style: TextStyle(
                    color: Color(0xff2a6ab9),
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
          TextButton(
            onPressed: () async {
              launch(_emailcustomerservice.toString());
            },
            child: const Text('Email',
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

final Uri _emailcustomerservice = Uri(
    scheme: 'mailto',
    path: 'jamie.eaton@nexosolutions.com',
    queryParameters: {'subject': 'Example Subject & Symbols are allowed!'});
//
sales(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('SALES',
            style: TextStyle(
                color: Color(0xff2a6ab9),
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        content: const Text('Choose an option'),
        actions: [
          TextButton(
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber('+1(903)235-2450');
            },
            child: const Text('Call',
                style: TextStyle(
                    color: Color(0xff2a6ab9),
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
          TextButton(
            onPressed: () async {
              launch(_emailsales.toString());
            },
            child: const Text('Email',
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

final Uri _emailsales = Uri(
    scheme: 'mailto',
    path: 'Cody.Ridge@nexosolutions.com',
    queryParameters: {'subject': 'Example Subject & Symbols are allowed!'});
//

engineering(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('ENGINEERING',
            style: TextStyle(
                color: Color(0xff2a6ab9),
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        content: const Text('Choose an option'),
        actions: [
          TextButton(
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber('+1(936)522-7364');
            },
            child: const Text('Call',
                style: TextStyle(
                    color: Color(0xff2a6ab9),
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
          TextButton(
            onPressed: () async {
              launch(_emailengineering.toString());
            },
            child: const Text('Email',
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

final Uri _emailengineering = Uri(
    scheme: 'mailto',
    path: 'scott.williams@nexosolutions.com',
    queryParameters: {'subject': 'Example Subject & Symbols are allowed!'});
//
technology(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('TECHNOLOGY',
            style: TextStyle(
                color: Color(0xff2a6ab9),
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        content: const Text('Choose an option'),
        actions: [
          TextButton(
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber('+1(832)296-6624');
            },
            child: const Text('Call',
                style: TextStyle(
                    color: Color(0xff2a6ab9),
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
          TextButton(
            onPressed: () async {
              launch(_emailtechnology.toString());
            },
            child: const Text('Email',
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

final Uri _emailtechnology = Uri(
    scheme: 'mailto',
    path: 'david.engel@nexosolutions.com',
    queryParameters: {'subject': 'Example Subject & Symbols are allowed!'});
//
laboratory(context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('LABORATORY',
            style: TextStyle(
                color: Color(0xff2a6ab9),
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        content: const Text('Choose an option'),
        actions: [
          TextButton(
            onPressed: () async {
              await FlutterPhoneDirectCaller.callNumber('+1(832)707-0529');
            },
            child: const Text('Call',
                style: TextStyle(
                    color: Color(0xff2a6ab9),
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
          TextButton(
            onPressed: () async {
              launch(_emaillaboratory.toString());
            },
            child: const Text('Email',
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

final Uri _emaillaboratory = Uri(
    scheme: 'mailto',
    path: 'sebastian.engel@nexosolutions.com',
    queryParameters: {'subject': 'Example Subject & Symbols are allowed!'});
//

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

final List<Contact> contacts = [
  Contact(
      name: "David Engel",
      position: "Managing Director",
      call: "+1 (832) 296-6624",
      email: "david.engel@nexosolutions.com"),
  Contact(
      name: "Cody Ridge",
      position: "Business Manager",
      call: "+ 1 (903) 235-2450",
      email: "Cody.Ridge@nexosolutions.com"),
  Contact(
      name: "Scott Williams",
      position: "Engineering Manager",
      call: "+1 (936) 522-7364",
      email: "scott.williams@nexosolutions.com"),
  Contact(
      name: "Jamie Eaton",
      position: "Customer Service & Logistics",
      call: "+ 1 (832) 797-5751",
      email: "jamie.eaton@nexosolutions.com"),
  Contact(
      name: "Sebastian Engel",
      position: "Laboratory",
      call: "+ 1 (832) 707-0529",
      email: "sebastian.engel@nexosolutions.com"),
  Contact(
      name: "Matlock Perkins",
      position: "Technical Sales West Texas & South Texas",
      call: "+1 (936) 537-0014",
      email: "matlock.perkins@nexosolutions.com"),
  Contact(
      name: "Jerry Rowland",
      position: "Technical Sales Louisiana, Oklahoma & East Texas",
      call: "+1 (903) 399-5930",
      email: "jerry.rowland@nexosolutions.com"),
  Contact(
      name: "Nicolas Engel",
      position: "Technical Sales East-West Coast & International",
      call: "+1 (936) 900-4675",
      email: "nicolas.engel@nexosolutions.com"),
  Contact(
      name: "Melissa Green",
      position: "Technical Training",
      call: "+1 (281) 797-9422",
      email: "melissa.green@nexosolutions.com"),
  Contact(
      name: "Heath Burns",
      position: "Systems Specialist",
      call: "+ 1 (281) 610-6632",
      email: "heath.burns@nexosolutions.com"),
];
