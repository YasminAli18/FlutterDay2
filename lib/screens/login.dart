import 'package:flutter/material.dart';
import 'package:flutter_day2/widgets/custom_email.dart';
import 'package:flutter_day2/widgets/custom_pass.dart'; 

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  
                },
              ),
              SizedBox(height: 10),

              Text(
                'Welcome Back',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6),

              Text(
                'Let\'s sign in',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),

              CustomEmailField(),
              SizedBox(height: 16),

              CustomPasswordField(),
              SizedBox(height: 8),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Recover Password',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: Text(
                  '200USD',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Slider(
                value: 70.0,
                min: 0,
                max: 100,
                onChanged: (value) {},
                activeColor: Colors.lightBlue,
                inactiveColor: Colors.grey,
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                    activeColor: Colors.lightBlue,
                  ),
                  Text(
                    'Checkbox Label',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),

              Row(
                children: [
                  Switch(
                    value: true,
                    onChanged: (bool value) {},
                    activeColor: Colors.lightBlue,
                  ),
                  Text(
                    'Switch Label',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                ),
                child: Text('Sign in'),
              ),
              SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'or continue with',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'data:image/jpeg;base64,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',
                        height: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png',
                        height: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'Sign Up!',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
