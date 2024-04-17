import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            side: const BorderSide(color: Colors.blue, width: 3),
            backgroundColor: Color.fromARGB(255, 181, 179, 179),
            minimumSize: Size(MediaQuery.sizeOf(context).width, 55)),
        onPressed: () {},
        child: const Text(
          "Submit",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}
