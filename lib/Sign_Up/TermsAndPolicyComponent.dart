import 'package:flutter/material.dart';

class TermsAndPolicyComponent extends StatefulWidget {
  final Function(bool)? onAgreementChanged;
  
  const TermsAndPolicyComponent({
    Key? key, 
    this.onAgreementChanged,
  }) : super(key: key);

  @override
  _TermsAndPolicyComponentState createState() => _TermsAndPolicyComponentState();
}

class _TermsAndPolicyComponentState extends State<TermsAndPolicyComponent> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 315.54,
        maxHeight: 25.43,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 18,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
                if (widget.onAgreementChanged != null) {
                  widget.onAgreementChanged!(isChecked);
                }
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          SizedBox(width: 10),
          Flexible(
            child: Text(
              'I agree to the terms & policy',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
           SizedBox(height: 10),

             ElevatedButton(
          onPressed: () {
            // Handle sign-up logic here
            // You can add form validation and user registration logic
            print('Sign Up button pressed');
          },
          child: Text('Confirm Sign Up'),
        ),
        ],
      ),
    );
  }
}

