import 'package:flutter/material.dart';
import 'package:pointclick/constants/file_assets.dart';

class Banner117 extends StatelessWidget {
  const Banner117({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50.0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor
      ),
      child: Column(
        children: [
          Image.asset(Assets.banner, width: MediaQuery.of(context).size.width*0.3,),
          const Text("Une Solution en un Click", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
