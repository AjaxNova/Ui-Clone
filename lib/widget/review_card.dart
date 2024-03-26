import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: 300,
        height: 220,
        borderRadius: 40,
        blur: 20,
        border: 2,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFFffffff).withOpacity(0.1),
              const Color(0xFFFFFFFF).withOpacity(0.05),
            ],
            stops: const [
              0.1,
              1,
            ]),
        borderGradient: LinearGradient(
          colors: [
            const Color(0xFFffffff).withOpacity(0.5),
            const Color((0xFFFFFFFF)).withOpacity(0.5),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                ),
                title: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: ' Carg',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      WidgetSpan(
                        child: Icon(
                          Icons.restart_alt,
                          size: 18,
                          color: Colors.green,
                        ),
                      ),
                      TextSpan(
                        text: 'matic',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Contary to popular belief,lorem ipusmis not simply random text. it is been used by many daily"),
                ),
              ),
              const SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        thickness: 10,
                        height: 20,
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
