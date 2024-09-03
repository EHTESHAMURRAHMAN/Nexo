import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget {
  final String title;
  final IconData icons;
  final VoidCallback? onPressed;
  const HomeGrid({
    super.key,
    required this.title,
    required this.icons,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
          onTap: onPressed,
          child: Container(
              height: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xff2a6ab9),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icons, color: Colors.white),
                    Center(
                        child: Text(title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13))),
                  ]))),
    );
  }
}
