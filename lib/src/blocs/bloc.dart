// Copyright (c) 2022 Evolving Software Corporation
// 
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT
import 'dart:async';
import 'validators.dart';

/// Instantiate a new [Bloc] with the given [initialState].
class Bloc with Validators {
  /// Create Email Stream Controller
  /// "_" 
  final _email = StreamController<String>();
  /// Create Password Stream Controller
  /// "_" means private
  final _password = StreamController<String>();

  /// Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  /// Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  /// Dispose
  dispose() {
    _email.close();
    _password.close();
  }

}