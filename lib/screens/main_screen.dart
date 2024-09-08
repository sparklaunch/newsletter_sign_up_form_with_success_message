import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: SvgPicture.asset(
                "assets/images/SignUp.svg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Stay updated!",
                    style: TextStyle(
                      color: Color.fromRGBO(32, 35, 58, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Join 60,000+ product managers receiving monthly updates on:",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(61, 61, 74, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/images/List.svg"),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: Text(
                          "Product discovery and building what matters",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(32, 35, 58, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/images/List.svg"),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: Text(
                          "Measuring to ensure updates are a success",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(32, 35, 58, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/images/List.svg"),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: Text(
                          "And much more!",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(32, 35, 58, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
