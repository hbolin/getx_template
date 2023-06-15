import 'package:flutter/material.dart';
import 'package:flutter_ankamak/common/pages/base_page.dart';
import 'package:flutter_ankamak/common/widgets/default_back_button.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class @namePage extends StatefulWidget {
  const @namePage({super.key});

  @override
  State<@namePage> createState() => _@namePageState();
}

class _@namePageState extends AppBasePage<@namePage> {

  final @nameLogic logic = Get.put(@nameLogic());
  final @nameState state = Get.find<@nameLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<@nameLogic>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(
          leading: const DefaultBackButton(),
          title: Text(data),
        ),
        body: buildScaffoldBody(context, logic, (context) {
         return Container();
        }),
      );
    });
  }
}