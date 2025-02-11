import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  // Time
                  Image.network(
                    'https://dashboard.codeparrot.ai/api/image/Z6m8bvrycnbNR_kf/9-41.png',
                    width: 54,
                    height: 21,
                  ),
                  // Status Icons
                  Row(
                    children: [
                      Image.network(
                        'https://dashboard.codeparrot.ai/api/image/Z6m8bvrycnbNR_kf/network.png',
                        width: 20,
                        height: 14,
                      ),
                      const SizedBox(width: 4),
                      Image.network(
                        'https://dashboard.codeparrot.ai/api/image/Z6m8bvrycnbNR_kf/wi-fi-sig.png',
                        width: 16,
                        height: 14,
                      ),
                      const SizedBox(width: 4),
                      Image.network(
                        'https://dashboard.codeparrot.ai/api/image/Z6m8bvrycnbNR_kf/battery.png',
                        width: 25,
                        height: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Back Arrow
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0xFF006D60)),
                    onPressed: () => Navigator.pop(context),
                  ),
              
              ),
              ),
            

            // Main Content
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Illustration
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 41),
                    child: Image.network(
                     // 'https://dashboard.codeparrot.ai/api/image/Z6m8bvrycnbNR_kf/undraw-c.png',

                      //'https://integrio.net/static/295c755a70d407c10ef0ed3a3bd907a7/10-ways-to-validate-future-product-idea-before-mvp.png' ,

                      //'https://cdn.prod.website-files.com/65cb522705dd95fa5a20a2fa/66a381d820057d4e72939f4e_25e5a1d3-4ca6-4c23-8f0e-2a8c4463a767.webp',
                      'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d77e139f-5558-4a98-82d6-aeab3827dc61',

                      width: 258,
                      height: 307,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 54),
                  
                  // Thank You Text
                  const Text(
                    'THANK YOU',
                    style: TextStyle(
                      fontFamily: 'Mukta',
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  
                  const SizedBox(height: 107),
                  
                  // Back Button
                  ElevatedButton(
                    onPressed: () {
                                  SystemNavigator.pop(); // This will close the app

         //   exit(0); // This will forcefully close the app
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2C2C2C),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 65,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(
                          color: Color(0xFF2C2C2C),
                          width: 1,
                        ),
                      ),
                    ),
                    child: const Text(
                      'close',
                      style: TextStyle(
                        color: Color(0xFFF5F5F5),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

