import 'package:flutter/material.dart';
import 'SignUpFormComponent.dart';
import 'OperatorSelectionComponent.dart';
import 'TermsAndPolicyComponent.dart';
import 'SignInWithGoogleComponent.dart';
import 'SignInLinkComponent.dart';

class SignUpLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          SizedBox(height: 20),
                          SignUpFormComponent(),
                          SizedBox(height: 20),
                          OperatorSelectionComponent(),
                          SizedBox(height: 20),
                          TermsAndPolicyComponent(),  
                          SizedBox(width: 20),  
                           Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/800px-Google_2015_logo.svg.png',
                      width: 20,
                      height: 20,
                    ),
                        ],
                      ),
                    ),
                 
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),  

            Divider(color: Color(0xBFBBBBBB), thickness: 2),
            SizedBox(height: 10),
            Text('Or', style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500, fontFamily: 'Poppins')),
            SizedBox(height: 10),
            SignInWithGoogleComponent(),
            SizedBox(height: 20),
            SignInLinkComponent(),
          ],
        ),
      ),
    );
  }
}
