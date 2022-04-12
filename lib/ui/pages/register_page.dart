import 'package:flutter/material.dart';
import 'package:pointclick/constants/file_assets.dart';
import 'package:pointclick/constants/navigation_routes.dart';
import 'package:pointclick/ui/widgets/banner.dart';
import 'package:pointclick/ui/widgets/footer_banner.dart';
import 'package:pointclick/ui/widgets/little_banner.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const Banner117(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
                image: DecorationImage(image: AssetImage(Assets.background)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const LittleBanner("Inscription", "Entrez les informations d'inscription"),
                  Expanded(
                    child: Form(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  label: Text("Nom et Prénom"),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                  filled: true,
                                  fillColor: Colors.white
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  label: Text("Nom d'utilisateur"),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                  filled: true,
                                  fillColor: Colors.white
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  label: Text("Mot de passe"),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                  filled: true,
                                  fillColor: Colors.white
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  label: Text("Confirmez le mot de passe"),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                                  filled: true,
                                  fillColor: Colors.white
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.home),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(const Color(0xffffffff)),
                                shadowColor: MaterialStateProperty.all(Theme.of(context).primaryColor)
                              ),
                              child: const Text("Suivant", style: TextStyle(color: Color(0xffC74F11)),),
                            )
                          ],
                        ),
                      ),
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
