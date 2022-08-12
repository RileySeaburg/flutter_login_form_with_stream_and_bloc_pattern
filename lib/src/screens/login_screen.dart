// Copyright (c) 2022 Evolving Software Corporation
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: const EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ));
  }

  Widget emailField() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
            errorText: 'Please enter a valid email',
            labelText: 'Email Address',
            hintText: 'Enter a valid email address',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
      ),
    );
  }
  Widget passwordField() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter a valid password',
            errorText: 'Password is required',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
      ),
    );
  }
  Widget submitButton() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Submit'),
      ),
    );
  }
}
