import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInLinkComponent extends StatelessWidget {
  const SignInLinkComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 193.33,
        minHeight: 22.66,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
              children: [
                TextSpan(text: 'Have an account? '),
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  

       
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Handle sign in navigation here
                    //  Navigator.pushNamed(context, '/signin');
                        Navigator.pushNamed(context, '/login');

                      
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
