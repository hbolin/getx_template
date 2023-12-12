import 'package:flutter/material.dart';
import 'package:flutter_rapid_development_kit/flutter_rapid_development_kit.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class @namePage extends AppBasePageStatefulWidget {
  const @namePage({
    super.key,
    this.initialGetTag = "singleton",
  });

  final String? initialGetTag;

  @override
  String getRouteName() => "/@namePage";

  @override
  Map<String, dynamic>? getRouteParas() => {
        // TODO:配置路由参数
      };

  @override
  State<@namePage> createState() => _@namePageState();
}

class _@namePageState extends AppBasePageState<@namePage> {
  late final @nameLogic logic;
  late final @nameState state;
  late final String getTag;

  @override
  void initState() {
    getTag = widget.initialGetTag ?? "${runtimeType}_$hashCode";
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
    return GetBuilder<@nameLogic>(
      tag: getTag,
      builder: (logic) {
        return buildCachedLoadingBody(context, logic, (context, isCachedData) {
          return Container();
        });
      },
    );
  }
}