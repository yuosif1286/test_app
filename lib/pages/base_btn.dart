import 'package:flutter/material.dart';
import 'package:sales_uikit/Components/Button/s_base_btn.dart';

class BaseButton extends StatefulWidget {
  const BaseButton({super.key});

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SBaseButton(
        title: 'Custom Base Button',
      ),
    );
  }
}
