import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:promilo_task/controler/providers/auth_provider.dart';

class SubmitButtonWidget extends HookConsumerWidget {
  final GlobalKey<FormState> formKey;
  final String email;
  final String password;
  const SubmitButtonWidget(
      {required this.formKey,
      required this.password,
      super.key,
      required this.email});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            side: const BorderSide(color: Colors.blue, width: 3),
            backgroundColor: const Color.fromARGB(255, 181, 179, 179),
            minimumSize: Size(MediaQuery.sizeOf(context).width, 55)),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            ref.read(authProvider.notifier).login(email, password, context);
          }
        },
        child: const Text(
          "Submit",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}
