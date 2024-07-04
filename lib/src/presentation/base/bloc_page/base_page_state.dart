import 'package:flutter/material.dart';

import '../bloc/base_bloc.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends BasePageStateDelegate<T, B> {}

abstract class BasePageStateDelegate<T extends StatefulWidget,
B extends BaseBloc> extends State<T> {
  bool get isSmallScreen => MediaQuery.of(context).size.height < 600;

  bool get isAppWidget => false;

  late final B bloc;

  BasePageStateDelegate() {
    bloc = createBlocInstance();
  }

  B createBlocInstance();

  @override
  Widget build(BuildContext context) {
    return buildPage(context);
  }

  Widget buildPage(BuildContext context);

  @override
  void dispose() {
    super.dispose();
    bloc.close();
  }
}
