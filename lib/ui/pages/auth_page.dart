import 'package:flutter/material.dart';
import 'package:pointclick/constants/file_assets.dart';
import 'package:pointclick/constants/navigation_routes.dart';
import 'package:pointclick/ui/widgets/banner.dart';
import 'package:pointclick/ui/widgets/footer_banner.dart';
import 'package:pointclick/ui/widgets/little_banner.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

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
                image: DecorationImage(
                  image: AssetImage(Assets.background)
                ),
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const LittleBanner("Connexion", "Veuillez entrer vos informations"),
                  Image.asset(Assets.user, width: 80.0),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.70,
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text("Nom d'utilisateur"),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                              filled: true,
                              fillColor: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.70,
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text("Mot de passe"),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                              filled: true,
                              fillColor: Colors.white
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, Routes.home),
                          child: const Text("Se Connecter"),
                        ),
                      ],
                    ),
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
