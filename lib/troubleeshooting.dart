// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class TroubleshootingItem {
//   final String title;
//   final String description;
//   final String? action;

//   TroubleshootingItem({
//     required this.title,
//     required this.description,
//     this.action,
//   });
// }

// class TroubleshootingPage extends StatelessWidget {
//   final List<TroubleshootingItem> troubleshootingItems;

//   const TroubleshootingPage({Key? key, required this.troubleshootingItems})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Troubleshooting'),
//       ),
//       body: ListView.builder(
//         itemCount: troubleshootingItems.length,
//         itemBuilder: (context, index) {
//           final item = troubleshootingItems[index];
//           return ListTile(
//             title: Text(item.title),
//             subtitle: Text(item.description),
//             onTap: () {
//               if (item.action != null) {
//                 // Perform the action (e.g., navigate to a link or show more details)
//                 // You can implement this based on your specific needs
//                 if (kDebugMode) {
//                   print('Perform action: ${item.action}');
//                 }
//               }
//             },
//           );
//         },
//       ),
//     );
//   }
// }
