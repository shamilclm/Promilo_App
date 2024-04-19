import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:promilo_task/controler/providers/auth_provider.dart';
import 'package:promilo_task/core/theme/app_theme.dart';

class SubmitButtonWidget extends HookConsumerWidget {
  final GlobalKey<FormState> formKey;
  final String email;
  final String password;
  final Color backgroundcolor;
  const SubmitButtonWidget(
      {required this.formKey,
      required this.password,
      required this.backgroundcolor,
      super.key,
      required this.email});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            side: const BorderSide(color: AppTheme.button, width: 3),
            backgroundColor: backgroundcolor,
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
