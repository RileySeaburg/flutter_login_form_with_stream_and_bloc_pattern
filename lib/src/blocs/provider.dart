// Copyright (c) 2022 Evolving Software Corporation
// 
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class Provider extends InheritedWidget {
  /// Instantiate a new bloc with the given [initialState].
  final bloc = Bloc();
  /// Constructor for [Provider] class.
  /// [child] is the widget to be wrapped by the [Provider].
  /// [updateShouldNotify] is the function that determines if the widget should be rebuilt.
  Provider({Key? key,  required Widget child}) : super(key: key, child: child);
  /// Random true/false to test the bloc
  @override
  bool updateShouldNotify(_) => true;

  /// Create a new [Provider] with the given [child] and [initialState].
  static Bloc of (BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider).bloc;
  }
}