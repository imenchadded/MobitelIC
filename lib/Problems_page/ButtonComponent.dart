import 'package:flutter/material.dart';
import 'package:mobitelic_flutter/Rating_Page/review_screen.dart';

class ButtonComponent extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;

  const ButtonComponent({
    Key? key,
    this.onPressed,
    this.label = 'Send Review',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 100, // Ensure contents fit
        maxWidth: 330,
      ),
              height: 53,
              width : 400,


      child: ElevatedButton(
        onPressed: onPressed ?? () {

Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>ReviewScreen ()),
                  );

        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF34C759), // Correct property for background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          elevation: 0,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Color(0xFFFEFEFE),
            fontSize: 16,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w600,
            letterSpacing: 0.07,
            height: 1.57, // 22px line height / 14px font size
          ),
        ),
      ),
    );
  }
}

