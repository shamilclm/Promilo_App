import 'package:flutter/material.dart';
import 'package:promilo_task/core/theme/app_theme.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  final bool ischecked;
  final String hinttext;
  final String fieldhead;
  final String fieldtail;
  late ValueNotifier<bool> isEnabled;

  final TextEditingController controller;

  TextFieldWidget({
    super.key,
    required this.hinttext,
    required this.fieldhead,
    required this.controller,
    required this.ischecked,
    required this.fieldtail,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            fieldhead,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          onChanged: (value) {
            if (value.isEmpty) {
              isEnabled.value = false;
            } else {
              isEnabled.value = true;
            }
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'This field is Required';
            }
            return null;
          },
          decoration: InputDecoration(
              hintText: hinttext,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.blue, width: 1.5),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ischecked
                ? Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                : const Text(''),
            Text(
              fieldtail,
              style: const TextStyle(
                  color: AppTheme.button,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        )
      ],
    );
  }
}
