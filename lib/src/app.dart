// Copyright (c) 2022 Evolving Software Corporation
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
        child: const MaterialApp(
      title: 'Log Me In',
      home: Scaffold(
        body: LoginScreen(),
      ),
    ));
  }
}
