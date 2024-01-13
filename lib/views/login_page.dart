import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:guess_it/views/game_homepage.dart';


const users = {
  'test@gmail.com': '12345',
  'test1@gmail.com': 'test1',
};

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FlutterLogin(

              theme: LoginTheme(

                primaryColor: Colors.purple.shade300
              ),
          title: '1  2  3  ?',
              //  logo: const AssetImage('lib/img/guess_logo.jpg'),
              onLogin: _authUser,
              onSignup: _signupUser,

              loginProviders: <LoginProvider>[
                LoginProvider(
                  icon: FontAwesomeIcons.google,

                  callback: () async {
                    debugPrint('start google sign in');
                    await Future.delayed(loginTime);
                    debugPrint('stop google sign in');
                    return null;
                  },
                ),
                LoginProvider(
                  icon: FontAwesomeIcons.facebookF,

                  callback: () async {
                    debugPrint('start facebook sign in');
                    await Future.delayed(loginTime);
                    debugPrint('stop facebook sign in');
                    return null;
                  },
                ),

              ],
              onSubmitAnimationCompleted: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const GameHomePage(),
                ));
              },
              onRecoverPassword: _recoverPassword,
            ),
          ),
        ],
      ),
    );
  }
}