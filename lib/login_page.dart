import 'package:flutter/material.dart';
import 'package:soundsee/pages/componets/button.dart';
import 'package:soundsee/pages/componets/squared_tile.dart';
import 'pages/componets/text_field.dart';
import 'package:hexcolor/hexcolor.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign user

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // Just a Lock Logo

                children: [
                  const SizedBox(height: 50),
                  Icon(
                    Icons.lock,
                    size: 100,
                    // color: Colors.blue,
                    color: HexColor("#0066FF"),
                  ),

                  const SizedBox(height: 50),

                  // Welcome note

                  const Text(
                    'Welcome back you\'ve been missed',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 50),

                  // Username text box

                  // Text field
                  MyTextfield(
                    controller: usernameController,
                    hintText: "Username",
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // Password Text box

                  MyTextfield(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(color: HexColor("#0066FF")),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  MyButton(
                    onTap: signUserIn,
                  ),

                  const SizedBox(height: 50),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Or continue with"),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquaredTile(imagePath: 'lib/assets/images/Google.png')
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not a member?"),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Register now!",
                        style: TextStyle(
                          color: HexColor("#0066FF"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
