import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class WidgetAnimColor extends StatelessWidget {
  final Widget child;
  final Color color, highlightColor;
  final Duration? duration;
  final bool? enabled;
  final int? loop;
  final Key? key;
  final ShimmerDirection? direction;
  // ignore: use_key_in_widget_constructors
  const WidgetAnimColor(
      {required this.child,
      required this.color,
      required this.highlightColor,
      this.duration,
      this.enabled,
      this.loop,
      this.key,
      this.direction});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        period: duration ?? const Duration(milliseconds: 1500),
        enabled: enabled ?? true,
        loop: loop ?? 0,
        key: key,
        direction: direction ?? ShimmerDirection.ltr,
        baseColor: color,
        highlightColor: highlightColor,
        child: child);
  }
}
