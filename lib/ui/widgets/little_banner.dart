import 'package:flutter/material.dart';

class LittleBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  const LittleBanner(this.title, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title.toUpperCase(), style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
        Text(subtitle, style: const TextStyle(color: Color(0xffC74F11)))
      ],
    );
  }
}
