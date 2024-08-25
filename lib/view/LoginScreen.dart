import 'package:flutter/material.dart';
import 'package:flutter_foundations_01/view/DashboardScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
        title: Text("Login Screen",
            style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: Container(
        width: double.infinity,  // Ensure container takes full width
        height: double.infinity, // Ensure container takes full height
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFd4fc79), // First gradient color
              Color(0xFF96e6a1), // Second gradient color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Lottie.asset(
                      'assets/images/Animation - 1720964386956.json'),
                ),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    hintStyle: Theme.of(context).textTheme.displayLarge,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.teal)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: isVisible,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    hintText: "Enter your Password",
                    hintStyle: Theme.of(context).textTheme.displayLarge,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.teal)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty) {
                      print("Please Enter Valid Credentials");
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.yellow,
                          content: Text(
                            "Please Enter Valid Credentials",
                            style: Theme.of(context).textTheme.displayLarge,
                          )));
                    } else {
                      print("Login Successfully!!");
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            "Login Successfully",
                            style: Theme.of(context).textTheme.displayLarge,
                          )));
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return BMICalculator();
                          }));
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
