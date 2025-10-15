import 'package:flutter/material.dart';
import 'package:pizza_sanar/my_transparent_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildBackgroundImage(),

          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Titre page
                const Text(
                  'Pizza Sanar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                // Email
                const SizedBox(height: 20.0),

                MyTransparentTextField(
                  icon: Icons.email,
                  hintText: 'Donnez un Email valide',
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                // Password
                const SizedBox(height: 20.0),
                MyTransparentTextField(
                  icon: Icons.lock,
                  hintText: 'Donnez votre mot de passe',
                  labelText: 'Password',
                  isPassword: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBackgroundImage() => Container(
    height: double.infinity,
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        image: AssetImage('assets/bg.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}
