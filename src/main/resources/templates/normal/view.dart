import 'package:flutter/material.dart';
import 'package:flutter_rapid_development_kit/flutter_rapid_development_kit.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class @namePage extends AppBasePageStatefulWidget {
  const @namePage({
    super.key,
    super.initialGetTag,
  });

  factory @namePage.fromRouteParas(Map<String, dynamic> json) => @namePage(
        initialGetTag: convertT<String?>(json['initialGetTag']),
        // TODO:配置路由参数
      );

  @override
  Map<String, dynamic>? getRouteParas() => {
        // TODO:配置路由参数
      };

  @override
  String getRouteName() => "/@namePage";

  @override
  State<@namePage> createState() => _@namePageState();
}

class _@namePageState extends _@namePageBaseState<@namePage> {
  @override
  Widget buildScaffold(BuildContext context, @nameLogic logic, bool isCachedData) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // TODO：
        ],
      ),
    );
  }
}

// ------------------------------------------------------ 基于Getx基础页面框架 ------------------------------------------------------

abstract class _@namePageBaseState<T extends @namePage> extends AppBasePageState<@namePage> {
  static const getxSingletonTag = "singleton";

  late final @nameLogic logic;
  late final @nameState state;
  late final String getTag;

  @override
  @mustCallSuper
  void initState() {
    getTag = widget.initialGetTag ?? getxSingletonTag;
    logic = Get.put(@nameLogic(), tag: getTag);
    state = Get.find<@nameLogic>(tag: getTag).state;
    state.page = widget;
    super.initState();
  }

  @override
  @mustCallSuper
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
          return buildScaffold(context, logic, isCachedData);
        });
      },
    );
  }

  Widget buildScaffold(BuildContext context, @nameLogic logic, bool isCachedData);
}
