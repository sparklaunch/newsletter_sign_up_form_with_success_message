import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newsletter_sign_up_form_with_success_message/screens/main_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Roboto",
        ),
        home: const MainScreen(),
      ),
    ),
  );
}
