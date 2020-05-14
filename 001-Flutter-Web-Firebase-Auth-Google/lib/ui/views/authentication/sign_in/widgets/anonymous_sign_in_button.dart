import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../app/constants/strings.dart';
import '../sign_in_view_model.dart';

class AnonymousSignInButton extends StatelessWidget {
  const AnonymousSignInButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        context.read<SignInViewModel>().signInAnonymously();
      },
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: Colors.red[900],
      child: Text(
        Strings.anonymousSignUp,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }
}
