import 'package:flutter/material.dart';
import 'package:university_explorer/SignIn/sign_up.dart';

import '../Custom/custom.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Container(
          height: 600,
          width: 420,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 70, right: 15, left: 15, bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: 'Enter Password'),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      print('pressed');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text('Forget Password?'),
                    )),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  minimumSize: Size(380, 50),
                ),
                onPressed: () {
                  print('pressed');
                },
                child: Text('SignIn'),
              ),
              Row(
                children: [
                  Divider(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.black,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: Text('or'),
                    ),
                    Expanded(
                        child: Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.black,
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  print('Continue with Google');
                },
                icon: SmallGoogleIcon(), // Custom Google Icon widget
                label: Text("Continue with Google"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(
                  children: [
                    Text("Don't have an account yet?"),
                    TextButton(onPressed: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                    }, child: Text('SignUp'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
