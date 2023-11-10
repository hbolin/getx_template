import 'package:flutter/material.dart';
import '../../common/pages/base_page.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class @namePage extends StatefulWidget {
  const @namePage({
    super.key,
    this.initialGetTag = "singleton",
  });

  final String initialGetTag;

  @override
  State<@namePage> createState() => _@namePageState();
}

class _@namePageState extends AppBasePage<@namePage> {
  late final @nameLogic logic;
  late final @nameState state;
  late final String getTag;

  @override
  void initState() {
    getTag = widget.initialGetTag;
    logic = Get.put(@nameLogic(), tag: getTag);
    state = Get.find<@nameLogic>(tag: getTag).state;
    state.page = widget;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant @namePage oldWidget) {
    state.page = widget;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<@nameLogic>(builder: (logic) {
      return Scaffold(
        body: buildScaffoldBody(context, logic, (context) {
         return Container();
        }),
      );
    });
  }
}