import 'package:flutter/foundation.dart';
import 'home.dart' as home;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set the initial route to display when the app is first launched
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: const LoginScreenWidget(),
      ),
      // Disable the debug banner in the top right corner of the app
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyLoginScreen();
  }
}

class MyLoginScreen extends State<LoginScreenWidget> {
  // Initialize two controllers for the username and password fields
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Function to handle the login button press
  void login() {
    String username = usernameController.text;
    String password = passwordController.text;
    if (kDebugMode) {
      print('Username: $username');
    }
    if (kDebugMode) {
      print('Password: $password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            // App title
            const Text(
              'PROMACT',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Login title
            const Text(
              'Log in',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Username text field
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Password text field
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Login button
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  // Navigate to the home screen on button press
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const home.MyHomePage(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // "Does not have account?" text
                const Text('Does not have account?'),
                // Sign up button
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
