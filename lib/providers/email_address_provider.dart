import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailAddressProvider =
    StateNotifierProvider<EmailAddressNotifier, String>(
        (ref) => EmailAddressNotifier());

class EmailAddressNotifier extends StateNotifier<String> {
  EmailAddressNotifier() : super("");
  void setText(String string) {
    state = string;
  }
}
