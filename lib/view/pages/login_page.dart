import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:promilo_task/view/widgets/submitbutton_widget.dart';
import 'package:promilo_task/view/widgets/submitted_media_widget.dart';
import 'package:promilo_task/view/widgets/textfeild_widget.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passWordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Promilo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Hi,Welcome Back!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFieldWidget(
              ischecked: false,
              hinttext: 'Enter or Mob NO',
              fieldhead: 'please sign in to continue',
              fieldtail: 'Sign in With OTP',
              controller: emailController,
            ),
            const SizedBox(
              height: 12,
            ),
            TextFieldWidget(
              ischecked: true,
              hinttext: 'Enter Password',
              fieldhead: 'Password',
              fieldtail: "Forget Password",
              controller: passWordController,
            ),
            const SizedBox(
              height: 12,
            ),
            const SubmitButtonWidget(),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Expanded(child: Divider()),
                Text(
                  "or",
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(child: Divider())
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SubmittedMediaWidget(),
            SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Business User?",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                Text("Don't have an account",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400))
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Login Here",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue),
                ),
                Text("Sign Up",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue))
              ],
            ),
            SizedBox(
              height: 32,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: "By continuing, you agree to\npromilo,s",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  children: [
                    TextSpan(
                        text: " Terms of Use & Privacy policy",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
