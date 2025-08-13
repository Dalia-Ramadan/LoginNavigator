import 'package:flutter/material.dart';
import 'package:login_navigator/homepage.dart';

class LoginPage extends StatelessWidget {
    LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Center(
        child: Container(
          width: 350,
          height:400.0,
          decoration: BoxDecoration(
            color: Color(0xFF2C2C2C),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(144, 207, 59, 59),
                blurRadius: 10.0,
                // offset: Offset(0, 5.0),
              ),
            ],
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(144, 207, 59, 59),
                        blurRadius: 5.0,
                        offset: Offset(0, 5.0),
                      ),
                      Shadow(
                        color: Color.fromARGB(144, 207, 59, 59),
                        blurRadius: 5.0,
                        offset: Offset(0, -5.0),
                      ),
                    ],
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Colors.white70),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Color(0xFF3C3C3C),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 300,
                child: TextField(
                  obscuringCharacter: '*',
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: Colors.white70),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Color(0xFF3C3C3C),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                
                onPressed: () {
                  // Handle login logic
                  if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                    // Perform login
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(

                      SnackBar(
                        
                        backgroundColor: Color.fromARGB(171, 207, 59, 59),
                        content: Row(
                          children: [
                            Icon(Icons.error, color: Colors.white),
                            SizedBox(width: 8),
                            Text('Please fill in all fields'),
                          ],
                        ),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(171, 207, 59, 59),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}