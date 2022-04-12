import 'package:flutter/material.dart';
import 'package:pointclick/constants/file_assets.dart';
import 'package:pointclick/ui/widgets/banner.dart';
import 'package:pointclick/ui/widgets/button_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const Banner117(),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonTile("Hôtels", Assets.hotel),
                      ButtonTile("Entreprises", Assets.enterprise),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonTile("Restaurants", Assets.restaurant),
                        ButtonTile("Écoles", Assets.school),
                      ],
                    ),
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
