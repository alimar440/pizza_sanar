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
                //Mot de passe oublie
                const SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Mot de passe oublie ?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Bouton Login
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 15.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Connexion',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),

                // Inscription
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Vous n'avez pas de compte ?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Inscription',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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
