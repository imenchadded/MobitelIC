import 'package:flutter/material.dart';

class SignUpFormComponent extends StatefulWidget {
  const SignUpFormComponent({Key? key}) : super(key: key);

  @override
  _SignUpFormComponentState createState() => _SignUpFormComponentState();
}

class _SignUpFormComponentState extends State<SignUpFormComponent> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String phoneNumber = '';
  String region = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 241.3,
        maxWidth: 241.3
        // MediaQuery.of(context).size.width * 0.8,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFormField(
              label: 'Name',
              hintText: 'Enter your name',
              onChanged: (value) => setState(() => name = value),
            ),
            SizedBox(height: 20),
            _buildFormField(
              label: 'Phone Number',
              hintText: 'your phone Number',
              onChanged: (value) => setState(() => phoneNumber = value),
            ),
            SizedBox(height: 20),
            _buildFormField(
              label: 'Region',
              hintText: 'your region',
              onChanged: (value) => setState(() => region = value),
            ),
            SizedBox(height: 20),
            _buildFormField(
              label: 'Email',
              hintText: 'Enter your email',
              onChanged: (value) => setState(() => email = value),
            ),
        
          ],
          
        ),
      ),
    );
  }

  Widget _buildFormField({
    required String label,
    required String hintText,
    required Function(String) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 151, 151, 151),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 175, 175, 175),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: InputBorder.none,
            ),
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ],
    );
  }
}

