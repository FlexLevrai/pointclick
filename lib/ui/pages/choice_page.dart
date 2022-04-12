import 'package:flutter/material.dart';
import 'package:pointclick/constants/file_assets.dart';
import 'package:pointclick/constants/navigation_routes.dart';
import 'package:pointclick/ui/widgets/banner.dart';
import 'package:pointclick/ui/widgets/button_tile.dart';
import 'package:pointclick/ui/widgets/footer_banner.dart';
import 'package:pointclick/ui/widgets/little_banner.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const Banner117(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
                image: DecorationImage(image: AssetImage(Assets.background)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const LittleBanner("Bienvenue", "Choisissez l'action à accomplir"),
                  Image.asset(Assets.salute, width: 80.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.auth),
                        child: const Text("Se Connecter"),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.register),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xffffffff))),
                        child: const Text("S'inscrire", style: TextStyle(color: Color(0xffC74F11)),),
                      )
                    ],
                  ),
                  const FooterBanner()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
