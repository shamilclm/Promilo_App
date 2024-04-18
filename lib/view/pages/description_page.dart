import 'package:flutter/material.dart';
import 'package:promilo_task/view/widgets/decs_imagepageview_widget.dart';
import 'package:promilo_task/view/widgets/desc_icon_widget.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Description"),
      ),
      body: Column(
        children: [IconWidget(), ImagePageViewWidget()],
      ),
    );
  }
}
