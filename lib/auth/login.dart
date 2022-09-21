import 'package:noteapp/main.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/auth/signup.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Note App",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Image(
                image: NetworkImage(
                    "https://icons.iconarchive.com/icons/alecive/flatwoken/512/Apps-Note-Taking-App-icon.png")),
            Form(
                child: Column(
              children: [
                Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
                Divider(thickness: 0, color: Colors.white),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
                Divider(thickness: 0, color: Colors.white),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                      ),
                    )),
                Divider(thickness: 0, color: Colors.white),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("HomePage");
                  },
                  child: Text("Log in"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                Divider(thickness: 0, color: Colors.white),
                Row(
                  children: [
                    const Text('Does not have account?'),
                    
                    TextButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("Sign Up");
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
