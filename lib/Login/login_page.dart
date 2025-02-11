import 'package:flutter/material.dart';
import 'package:mobitelic_flutter/About_app/feedback_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Login")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // Back button and user icon row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Color(0xFF006D60)),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png',
                      width: 28,
                      height: 31,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Text(
                      'Welcome back, Imen \nChadded',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 14,
                        color: Color(0xFF5B5B5B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/previews/016/900/444/non_2x/online-dating-app-login-illustration-valentine-s-day-love-match-mobile-leaves-gradient-character-illustration-vector.jpg',
                    width: 270,
                    height: 270,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 24),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Text(
                      'Enter Your Mobile \nNumber',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFF2796B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF80D676)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Number',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color(0xFF545151),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change \nNumber ?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            color: Color(0xFF5B5B5B),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the FeedbackPage when the button(
// Navigate to the FeedbackPage when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedbackScreen()),
                  );

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF80D676),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Color(0xFFA39797), thickness: 1),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF5B5B5B),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Color(0xFFA39797), thickness: 1),
                    ),
                  ],
                ),
                
                const SizedBox(height: 16),
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Color(0xFF5B5B5B),
                      ),
                      children: [
                        TextSpan(text: "You Don't have an account ? \n"),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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

