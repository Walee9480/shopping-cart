import 'package:flutter/material.dart';
import 'package:start/home-screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
                opacity: 0.6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Coffee Shop',
              style: TextStyle(
                  fontSize: 50, color: Colors.white, fontFamily: 'Pacifico'),
            ),
            const SizedBox(
              height: 290,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        height: 3,
                        width: 90,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Connect With:',
                        style: TextStyle(
                            fontSize: 15, color: Colors.white.withOpacity(0.8)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 3,
                        width: 90,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/fb.png"))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/google.png"))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/twit.png"))),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Feeling Low? Take A Sip Of Coffee',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
                Material(
                  color: const Color(0xffE57734),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    splashColor: Colors.black,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      child: const Text(
                        'Get started ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
