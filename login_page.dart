import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Title
                const Text(
                  "Hipcamp",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                // Social buttons
                socialButton(Icons.g_mobiledata, "Continue with Google"),
                const SizedBox(height: 12),

                socialButton(Icons.facebook, "Continue with Facebook"),
                const SizedBox(height: 12),

                socialButton(Icons.apple, "Continue with Apple"),

                const SizedBox(height: 25),

                // Email
                textField("Email or Username", false),
                const SizedBox(height: 12),

                // Password
                textField("Password", true),

                const SizedBox(height: 20),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Log in"),
                  ),
                ),

                const SizedBox(height: 10),

                // Navigate to Sign Up
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  child: const Text("Don't have an account? Sign up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // SOCIAL BUTTON
  Widget socialButton(IconData icon, String text) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 22),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }

  // TEXT FIELD
  Widget textField(String hint, bool obscure) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}