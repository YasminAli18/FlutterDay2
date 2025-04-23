import 'package:flutter/material.dart';
import 'package:flutter_day2/widgets/custom_email.dart'; 
import 'package:flutter_day2/widgets/custom_pass.dart'; 
import 'package:flutter_day2/widgets/custom_fullname.dart'; 
import 'package:flutter_day2/widgets/custom_confirm.dart'; 

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                'Let\'s sign up',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),


              CustomFullNameField(),
              SizedBox(height: 16),

              CustomEmailField(),
              SizedBox(height: 16),

              CustomPasswordField(),
              SizedBox(height: 8),
              
              CustomConfirmField(),
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
                child: Text('Sign up'),
              ),
              SizedBox(height: 24),

             
              SizedBox(height: 20),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'Sign In!',
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
