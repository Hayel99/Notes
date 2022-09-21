import 'package:flutter/material.dart';
import 'package:noteapp/auth/login.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  bool isChecked = false;

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
                  "Sign UP",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
                Divider(thickness: 0, color: Colors.white),
                TextField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                ),
                Divider(thickness: 0, color: Colors.white),
                TextField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                  ),
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
                Divider(thickness: 0, color: Colors.white),
                TextField(
                  controller: rePasswordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Re-Password',
                  ),
                ),
                Divider(thickness: 0, color: Colors.white),
                CheckboxListTile(
                  value: isChecked,
                  onChanged: (val) {
                    setState(() {
                      isChecked = val!;
                    });
                  },
                  title: Text(
                    "All information that entered is correct",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.deepOrange),
                  ),
                ),
                Divider(thickness: 0, color: Colors.white),
                Row(
                  children: [
                    const Text('Does you have account?'),
                    TextButton(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("Log In");
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                Divider(thickness: 0, color: Colors.white),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Sign Up "),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
