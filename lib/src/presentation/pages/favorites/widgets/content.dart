import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: getBorder(),
        enabledBorder: getBorder(),
        focusedBorder: getBorder(),
        errorBorder: getBorder(),
        disabledBorder: getBorder(),
      ),
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      autofocus: true,
      autocorrect: false,
      onFieldSubmitted: (text) {
        context.maybePop(text);
      },
    );
  }

  InputBorder getBorder() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(20));
  }
}
