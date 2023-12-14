library responsive_wrap_container;

import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  const ResponsiveContainer(
      {super.key,
      this.maxWidth = 600,
      this.colorContainer = Colors.white,
      this.colorBackground = const Color.fromRGBO(244, 244, 244, 1),
      required this.child});

  /// Max breakpoint width for the responsive container
  final double maxWidth;

  /// Color of the main container (box holding your content)
  final Color? colorContainer;

  /// Color for the responsive background (appears only when screen passes the maxWidth value)
  final Color? colorBackground;

  /// Your content
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBackground,
      child: Padding(
        padding: EdgeInsets.only(top: getAdaptivePadding(context)),
        child: Center(
          child: Material(
            borderRadius: BorderRadius.circular(18),
            elevation: 18,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
              decoration: BoxDecoration(
                  color: colorContainer,
                  borderRadius: const BorderRadius.all(Radius.circular(18))),
              width: getWidth(context),
              height: getHeight(context),
              child: SizedBox(width: maxWidth, child: child),
            ),
          ),
        ),
      ),
    );
  }

  double? getWidth(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return (screenHeight > 400)
        ? null //wrap
        : double.infinity; //full screen
  }

  double? getHeight(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return (screenWidth > 400)
        ? null //wrap
        : double.infinity; //full screen
  }

  double getAdaptivePadding(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    if (screenWidth > 400 && screenHeight > 400) {
      return 20;
    }

    return 0;
  }
}
