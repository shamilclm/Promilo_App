import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:promilo_task/view/widgets/textfeild_widget.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Promilo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Hi,Welcome Back!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFieldWidget(
            hinttext: 'Enter or Mob NO',
            fieldhead: 'please sign in to continue',
            filedtail: 'fffff',
          )
        ],
      ),
    );
  }
}
