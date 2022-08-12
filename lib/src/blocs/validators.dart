// Copyright (c) 2022 Evolving Software Corporation
// 
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'dart:async';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Please enter a valid email');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 6) {
      sink.add(password);
    } else {
      sink.addError('Password is required and must be at least 6 characters');
    }
  });
}