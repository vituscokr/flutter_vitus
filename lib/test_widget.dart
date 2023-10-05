import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text('vitus.hello'.tr());
  }
}
