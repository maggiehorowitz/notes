import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/blocs/blocs.dart';

/// 1. Create stateless widget
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //2. return a scaffold
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold();
      },
    );
  }
}
