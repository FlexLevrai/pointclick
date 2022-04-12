import 'package:flutter/material.dart';
import 'package:pointclick/constants/file_assets.dart';
import 'package:pointclick/ui/widgets/banner.dart';
import 'package:pointclick/ui/widgets/little_banner.dart';
import 'package:pointclick/ui/widgets/side_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(Assets.profile)),
                      Text("Amanda KOSSI", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(Assets.banner, width: MediaQuery.of(context).size.width*0.3,),
                      const Text("Une Solution en un Click", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
                image: DecorationImage(image: AssetImage(Assets.background)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const LittleBanner("One Click", "En un click lancez votre journé !"),
                  Column(
                    children: const [
                      SideButton("Heure D'arrivée", false),
                      SideButton("Heure De Fin", true),
                      SideButton("Pause", false),
                      SideButton("Fin De Pause", true),
                      SideButton("Sortie Spéciale", false, isSpecial: true),
                      SideButton("S.Spéciale Fin", true),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
