import 'package:flutter/material.dart';

class SignInWithGoogleComponent extends StatelessWidget {
  const SignInWithGoogleComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296,
      height: 40,
      child: Material(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Color(0xFFDADCE0),
            width: 1,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            // Handle Google Sign In
            print('Google Sign In Clicked');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/800px-Google_2015_logo.svg.png',
                  width: 50.89,
                  height: 20,
                  fit: BoxFit.contain,
                ),
                SizedBox(width: 8),
                Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.25,
                    color: Color(0xFF3C4043),
                    height: 1.21, // 17px / 14px = 1.21
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
