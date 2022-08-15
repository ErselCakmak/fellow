import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget toVisible(bool value) => value ? this : const SizedBox.shrink();
  Widget toDisabled([bool? disable, double? opacity]) => IgnorePointer(
        ignoring: disable ?? true,
        child: Opacity(opacity: (disable ?? true) ? (opacity ?? 0.3) : 1, child: this),
      );
}
