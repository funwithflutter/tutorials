import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../app/services/firebase_auth_service.dart';

class SignInViewModel extends ChangeNotifier {
  SignInViewModel(this.locator);

  final Locator locator;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> signInAnonymously() async {
    _setLoading();
    await locator<FirebaseAuthService>().signInAnonymously();
    _setNotLoading();
  }

  void _setLoading() {
    _isLoading = true;
    notifyListeners();
  }

  void _setNotLoading() {
    _isLoading = false;
    notifyListeners();
  }
}
