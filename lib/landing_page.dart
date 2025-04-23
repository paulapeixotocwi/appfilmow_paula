import 'package:appfilmow_paula/components/buttons/primary_button.dart';
import 'package:appfilmow_paula/components/buttons/secundary_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/banner-login.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: size.height * .33,
            width: size.width,
            padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 19),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Watch movies anytime anywhere",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  "Explore a vast collection of blockbuster movies, timeless classics, and the latest releases.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
                PrimaryButton(onPressed: () {}, text: "Login"),
                SecondaryButton(onPressed: () {}, text: "Sign up"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
