import 'package:flutter/material.dart';

class FooterBanner extends StatelessWidget {
  const FooterBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.warning_amber_rounded, color: Color(0xffC74F11)),
        Text("Choisissez l'action à accomplir", style: TextStyle(color: Color(0xffC74F11)))
      ],
    );
  }
}
