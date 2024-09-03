import 'package:flutter/material.dart';

class MainColumn extends StatelessWidget {
  final String title;
  final IconData icons;
  final VoidCallback? onPressed;
  const MainColumn({
    super.key,
    required this.title,
    required this.icons,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
            padding: const EdgeInsets.only(left: 80),
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff2a6ab9).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(3, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Icon(icons, color: const Color(0xff2a6ab9), size: 30),
              const SizedBox(width: 20),
              Text(title,
                  style: const TextStyle(
                      color: Color(0xff2a6ab9),
                      fontSize: 14,
                      fontWeight: FontWeight.bold))
            ])));
  }
}
