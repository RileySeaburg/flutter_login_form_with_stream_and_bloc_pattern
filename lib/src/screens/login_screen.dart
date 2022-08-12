// Copyright (c) 2022 Evolving Software Corporation
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Create a new bloc with the given [initialState].
    /// bloc is only available in the build method.
    /// bloc is a singleton.
    final bloc = Provider.of(context);

    return Container(
        margin: const EdgeInsets.all(20),

        child: Column(
          children: [
            Container(margin: const EdgeInsets.only(top: 50.0)),
            emailField(bloc),
            Container(margin: const EdgeInsets.only(top: 25.0)),
            passwordField(bloc),
            Container(margin: const EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ));
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
              onChanged: bloc.changeEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(

                  /// add paddung to the bottom of the text field
                  /// to make it look better
                  contentPadding: const EdgeInsets.only(bottom: 3),
                  errorText: snapshot.error?.toString(),
                  labelText: 'Email Address',
                  hintText: 'Enter a valid email address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))));
        });
  }

  /// Widget for the password field
  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
              onChanged: bloc.changePassword,
              obscureText: true,
              decoration: InputDecoration(
                  errorText: snapshot.error?.toString(),
                  labelText: 'Password',
                  hintText: 'Enter a valid password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))));
        });
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
