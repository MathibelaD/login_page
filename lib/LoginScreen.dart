import 'package:flutter/material.dart';
import 'DashBoard.dart';
import 'theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 52, 114, 145),
      appBar: AppBar(
        title: Text(
          "Login Page",
          // style: titleText,
        ),
        backgroundColor: Color.fromARGB(255, 9, 82, 119),
      ),
      body: Center(
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                "Login",
                style: titleText,
              ),
//==================================================================================================================================
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      // borderSide:
                      //     BorderSide(color: Colors.yellow, width: 1.5)
                    ),
                    hintText: "Enter User Name",
                    labelText: "Username",
                  ),
                ),
              ),
//==================================================================================================================================
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
              ),
//==================================================================================================================================
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Forgot Password?\t",
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),
              ),
              const Text(
                "New? Create account",
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),
              ),
//===========================================================Button=======================================================================
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 9, 82, 119))),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 10,
        child: Column(
          children: [
            const SizedBox(height: 100),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/dashboard');
              },
              leading: const Icon(Icons.dashboard),
              title: const Text("DashBoard"),
            ),
            ListTile(
              onTap: () {},
              leading: const CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey,
              ),
              title: const Text("User Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
