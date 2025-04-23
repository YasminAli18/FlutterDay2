import 'package:flutter/material.dart';
import 'package:flutter_day2/screens/login.dart';
import 'package:flutter_day2/widgets/custom_signup.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            SizedBox(height: 40), 

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4, 
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../../assets/images/Group.png'), 
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 20), 

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Enterprise Team\nManagement',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 10), 

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'With an extensive menu prepared by talented chefs, fresh quality food.',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),

            SizedBox(height: 30), 

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: SignUpButton( 
                onPressed: () {
                 
                  print("Sign Up button pressed");
                },
              ),
            ),

            SizedBox(height: 20), 

           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()), 
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.grey),
                  foregroundColor: Colors.grey, 
                  minimumSize: Size(double.infinity, 50), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), 
                  ),
                ),
                child: Text('Already have an account', style: TextStyle(color: Colors.black)), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
