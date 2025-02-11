import 'package:flutter/material.dart';
import 'package:mobitelic_flutter/Problems_page/main.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Status Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '9:41',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  /*Row(
                    children: [
                      Image.network('https://dashboard.codeparrot.ai/api/image/Z6HWTjRi7Jes381-/network.png', height: 14),
                      SizedBox(width: 4),
                      Image.network('https://dashboard.codeparrot.ai/api/image/Z6HWTjRi7Jes381-/wi-fi-sig.png', height: 14),
                      SizedBox(width: 4),
                      Image.network('https://dashboard.codeparrot.ai/api/image/Z6HWTjRi7Jes381-/battery.png', height: 14),
                    ],
                  ),*/
                ],
              ),
            ),

            // Back Button


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


     
            // Title
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Text(
                'Exprime your Feedback',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF333333),
                  letterSpacing: -0.24,
                ),
              ),
            ),

            // Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/4501/4501117.png',
                    //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd2GvYZRFjL8nmfsw4uClfrMigzZxWkABEok9PVvelMz3jJxYGHdP5YTWNJDcWQ9chrrY&usqp=CAU',
                      width: 270,
                      height: 200,
                 errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                    return Center(child: Text('Image failed to load'));
                    },
                    
                    ),
                    SizedBox(height: 24),
                    Text(
                      'MOBITELIC has been created to give possibility to improve your communication life\n\nThis application helps you to provide your opinion and feedback to the telecom operator you use.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        color: Color(0xFF333333),
                        letterSpacing: -0.15,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Continue Button
            Padding(
              padding: const EdgeInsets.all(24),
              child: ElevatedButton(
              onPressed: () {
// Navigate to the FeedbackPage when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>MyLayout ()),
                  );
            },       
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF006D60),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: Size(double.infinity, 48),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/aae4d11f-daf2-428a-9465-b72cd47d7b61',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

