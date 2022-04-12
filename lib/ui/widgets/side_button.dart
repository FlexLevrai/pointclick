import 'package:flutter/material.dart';
import 'package:pointclick/constants/navigation_routes.dart';

class SideButton extends StatelessWidget {
  final String text;
  final bool isRight;
  final bool isSpecial;
  const SideButton(this.text, this.isRight, {this.isSpecial = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    onSuccess() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Merci !!!'),
        backgroundColor: Colors.black,
      ));
      Navigator.pushNamedAndRemoveUntil(context, Routes.auth, (route) => false);
    }
    return Row(
      mainAxisAlignment: isRight ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(isRight ? Colors.white : Theme.of(context).primaryColor)),
          onPressed: () => !isSpecial
              ? onSuccess()
              : showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(
                    "Sortie Spéciale".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)
                  ),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height*0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          minLines: 3,
                          maxLines: 3,
                          decoration: InputDecoration(
                              label: Text("Motif de la sortie"),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.pushNamedAndRemoveUntil(context, Routes.auth, (route) => false),
                          child: const Text("Valider"),
                        ),
                      ],
                    ),
                  ),
                )
              ),
          child: Text(text, style: TextStyle(color: isRight ? Theme.of(context).primaryColor : Colors.white) ),
        ),
      ],
    );
  }
}
