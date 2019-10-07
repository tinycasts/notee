import 'package:flutter/material.dart';
import 'package:notee/themes/colors.dart';

class LayoutTheme extends StatefulWidget {
  final Widget child;

  LayoutTheme({ this.child });

  @override
  LayoutThemeState createState() => LayoutThemeState();

  static LayoutThemeState of(BuildContext context) {
    return (
      context.inheritFromWidgetOfExactType(_InheritedStateContainer) as _InheritedStateContainer
    ).data;
  }
}

class LayoutThemeState extends State<LayoutTheme> {
  LinearGradient get background => LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    stops: [0.1, 0.85],
    colors: [
      this.colors.sanMarino,
      this.colors.vistaBlue
    ]
  );

  AppColors get colors => AppColors();

  @override
  Widget build(BuildContext context) {
    return _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }
}

class _InheritedStateContainer extends InheritedWidget {
  final LayoutThemeState data;

  _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedStateContainer old) => true;
}
