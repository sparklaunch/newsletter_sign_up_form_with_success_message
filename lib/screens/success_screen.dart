import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsletter_sign_up_form_with_success_message/providers/email_address_provider.dart';

class SuccessScreen extends ConsumerWidget {
  const SuccessScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailAddress = ref.watch(emailAddressProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/images/Success.svg"),
                    const SizedBox(height: 30),
                    const Text(
                      "Thanks for subscribing!",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(32, 35, 58, 1),
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Color.fromRGBO(32, 35, 58, 1),
                          height: 1.5,
                          fontSize: 16,
                        ),
                        children: [
                          const TextSpan(
                              text: "A confirmation email has been sent to "),
                          TextSpan(
                              text: emailAddress,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          const TextSpan(
                              text:
                                  " Please open it and click the button inside to confirm your subscription."),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(32, 35, 58, 1),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Dismiss message"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
