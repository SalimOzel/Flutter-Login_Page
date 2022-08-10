import 'package:flutter/material.dart';
import 'package:login_page/components/background.dart';
import 'package:login_page/languages/words.dart';
import 'package:login_page/screens/pages/login_page.dart';
import 'package:login_page/screens/pages/sing_up_page.dart';
import '../../main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _textOr = 'OR';
    var height = MediaQuery.of(context).size.height;
    double _sizedBoxHeight = 60;
    double _sizedBoxWitdh = 350;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Background(height: height),
            Padding(
              padding: PaddingProperties().paddingOnly,
              child: _welcomePageAsset(),
            ),
            SizedBox(
              height: _sizedBoxHeight,
              width: _sizedBoxWitdh,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const SignUpPage();
                    },
                    fullscreenDialog: true,
                  ));
                },
                child: Text(
                  LanguageItems.signUpButton,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            Padding(
              padding: PaddingProperties().paddinOR,
              child: Text(_textOr, style: Theme.of(context).textTheme.headline6),
            ),
            SizedBox(
              height: _sizedBoxHeight,
              width: _sizedBoxWitdh,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                    fullscreenDialog: true,
                  ));
                },
                child: Text(
                  LanguageItems.loginButton,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Image _welcomePageAsset() {
    return Image.asset(
      'assets/images/chat.png',
    );
  }
}
