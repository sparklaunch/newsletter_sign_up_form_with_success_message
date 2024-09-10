import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsletter_sign_up_form_with_success_message/providers/email_address_provider.dart';
import 'package:newsletter_sign_up_form_with_success_message/screens/success_screen.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  final emailAddressTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    emailAddressTextEditingController.text = ref.watch(emailAddressProvider);
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
                  const SizedBox(height: 20),
                  TextField(
                    controller: emailAddressTextEditingController,
                    onChanged: (value) {
                      ref.read(emailAddressProvider.notifier).setText(value);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      label: Text(
                        "Email address",
                        style: TextStyle(
                          color: Color.fromRGBO(32, 35, 58, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      hintText: "email@company.com",
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(32, 35, 58, 1),
                      padding: const EdgeInsets.all(20),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => const SuccessScreen(),
                      );
                    },
                    child: const Text("Subscribe to monthly newsletter"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailAddressTextEditingController.dispose();
    super.dispose();
  }
}
