import 'package:flutter/material.dart';
import 'package:pointclick/constants/navigation_routes.dart';

class ButtonTile extends StatelessWidget {
  final String imageAsset;
  final String title;
  const ButtonTile(this.title, this.imageAsset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.choice),
      child: Column(
        children: [
          Image.asset(imageAsset, width: MediaQuery.of(context).size.width*0.3,),
          Text(title, style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
