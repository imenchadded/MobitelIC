import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            left:50,
            top: 50,
        child: Container(
          width: 300,
          height: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), // Rounded corners
            color: Colors.white, // Optional: Background color
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 214, 212, 212).withOpacity(0.2), // Shadow color
                spreadRadius: 2, // Spread radius
                blurRadius: 5, // Blur radius
                offset: Offset(0,9), // Shadow position
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias, // Ensures the image respects the rounded corners
          child: Image.network(
         'https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/124a954d-8eaf-4149-8f90-89d4a19b424b',
            fit: BoxFit.cover, // Adjust fit as needed
          ),
          ),    ),

        
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
           IconButton(
                      icon: Icon(Icons.arrow_back, color: Color(0xFF006D60)),
                      onPressed: () => Navigator.pop(context),
                    ),

                    IconButton(
                      icon: Icon(Icons.account_circle, color: Color(0xFF006D60) ),
                      onPressed: () => Navigator.pop(context),
                    ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }


}

