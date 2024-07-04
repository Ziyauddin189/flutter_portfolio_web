import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BasePage<B extends BaseBloc> extends StatelessWidget {
  final B bloc;

  BasePage({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (context) => bloc,
      child: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Base Page'),
      ),
      body: Center(
        child: Text('This is a base page.'),
      ),
    );
  }
}

abstract class BaseBloc extends Bloc<dynamic, dynamic> {
  BaseBloc(dynamic initialState) : super(initialState);
}


