import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFieldWidget extends StatelessWidget {
  final bool isEnabled;
  final bool toNext;
  final bool hasAutoFocus;
  final TextEditingController textEditingController;

  const InputFieldWidget({
    required this.toNext,
    this.hasAutoFocus: false,
    this.isEnabled: true,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: SizedBox(
        height: 32,
        child: TextFormField(
          enabled: isEnabled ? true : false,
          textInputAction: toNext ? TextInputAction.next : TextInputAction.done,
          autofocus: hasAutoFocus ? true : false,
          controller: textEditingController,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.disabled,
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }

  void printInputValue() {
    print('Last value from actual field: ${textEditingController.text}');
  }
}
