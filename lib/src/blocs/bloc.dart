// Copyright (c) 2022 Evolving Software Corporation
// 
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT
// ignore_for_file: avoid_print

import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

/// Instantiate a new [Bloc] with the given [initialState].
class Bloc with Validators {
  /// Create Email Stream Controller
  /// "_" 
  final _email = BehaviorSubject<String>();
  /// Create Password Stream Controller
  /// "_" means private
  final _password = BehaviorSubject<String>();

  /// Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  /// Combine the streams using RxDart's combineLatest
  /// RX replaces observable which have been deprecated.
  /// CombineLatest combines the latest value from each stream into a single stream.
  /// CombineLatest emits the latest value from each stream whenever any of the streams emits a new value.
  Stream get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);
  /// Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit(){
    final validEmail = _email.value;
    final validPassword = _password.value;

    print('Email: $validEmail');
    print('Password: $validPassword');
  }

  /// Dispose
  dispose() {
    _email.close();
    _password.close();
  }

}