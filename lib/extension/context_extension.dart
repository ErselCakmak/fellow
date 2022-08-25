import 'package:fellow/utility/page_animation.dart';
import 'package:flutter/material.dart';

extension DurationExtension on BuildContext {
  Duration get durationLow => const Duration(milliseconds: 500);
  Duration get durationNormal => const Duration(seconds: 1);
  Duration get durationSlow => const Duration(seconds: 2);
}

extension NavigationExtension on BuildContext {
  NavigatorState get navigation => Navigator.of(this);

  Future<bool> pop<T>([T? data]) async {
    return await navigation.maybePop(data);
  }

  void popWithRoot() => Navigator.of(this, rootNavigator: true).pop();

  Future<T?> navToName<T>(String path, {Object? data}) async {
    return await navigation.pushNamed<T>(path, arguments: data);
  }

  Future<T?> navNameAndRemove<T>(String path, {Object? data}) async {
    return await navigation.pushNamedAndRemoveUntil(path, (route) => false, arguments: data);
  }

  Future<T?> navToPage<T>(Widget page, {Object? extra, SlideType type = SlideType.DEFAULT}) async {
    return await navigation.push<T>(type.route(page, RouteSettings(arguments: extra)));
  }

  Future<T?> navAndRemove<T>(Widget page) async {
    return await navigation.pushAndRemoveUntil(MaterialPageRoute(builder: (context) => page), (Route<dynamic> route) => false);
  }
}
