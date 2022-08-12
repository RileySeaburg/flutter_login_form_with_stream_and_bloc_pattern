import 'package:flutter/material.dart';
import './src/app.dart';

void main() {
  runApp(const MyApp());
}

/// This application implements the BLOC pattern to manage state.
/// BLOC stands for Business Logic Component.
/// It is a pattern that is used to separate presentation from business logic.
/// The presentation layer is implemented in the widget tree.
/// The business logic is implemented in BLOC classes.
/// The BLOC classes manage state and expose streams of state changes.
/// The widget tree listens to these streams and rebuilds when state changes.
/// The BLOC classes do not know anything about the widget tree.
/// The widget tree does not know anything about the BLOC classes.
/// The BLOC classes are implemented as streams of events and states.
/// The widget tree sends events to the BLOC classes.
/// The BLOC classes send state changes back to the widget tree.



