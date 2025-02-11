import 'package:flutter/material.dart';
import 'package:mobitelic_flutter/Login/login_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String selectedOperator = 'Orange';
  bool keepSignedIn = false;
  final _formKey = GlobalKey<FormState>();
  
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController regionController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF495E57),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF495E57),
                            ),
                            child: const Center(
                              child: Text(
                                '←',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Back',
                          style: TextStyle(
                            fontFamily: 'Karla',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: 'Markazi Text',
                          fontSize: 64,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildInputField('USERNAME*', usernameController),
                    _buildInputField('PHONE NUM*', phoneController),
                    _buildInputField('REGION *', regionController),
                    _buildInputField('EMAIL*', emailController),
                    const SizedBox(height: 20),
                    const Text(
                      'OPERATOR',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    _buildOperatorSelection(),
                    Row(
                      children: [
                        Checkbox(
                          value: keepSignedIn,
                          onChanged: (value) {
                            setState(() {
                              keepSignedIn = value ?? false;
                            });
                          },
                        ),
                        const Text(
                          'Keep me signed in on this device',
                          style: TextStyle(
                            fontFamily: 'Karla',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Handle sign in
                          }
                             Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFD700),
                          minimumSize: const Size(175, 41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Karla',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        'or sign in with',
                        style: TextStyle(
                          fontFamily: 'Karla',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialButton('https://dashboard.codeparrot.ai/api/image/Z6ssk_rycnbNR_pb/social-i.png'),
                        const SizedBox(width: 20),
                        _buildSocialButton('https://dashboard.codeparrot.ai/api/image/Z6ssk_rycnbNR_pb/social-i-2.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Karla',
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildOperatorSelection() {
    return Row(
      children: [
        _buildOperatorOption('ooredoo', const Color(0xFFF10909)),
        _buildOperatorOption('Orange', const Color(0xFFFCAC00)),
        _buildOperatorOption('Telecom', const Color(0xFF12ABE7)),
      ],
    );
  }

  Widget _buildOperatorOption(String name, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Radio<String>(
            value: name,
            groupValue: selectedOperator,
            onChanged: (String? value) {
              setState(() {
                selectedOperator = value!;
              });
            },
          ),
          Text(
            name,
            style: TextStyle(
              color: color,
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton(String imageUrl) {
    return InkWell(
      onTap: () {
        // Handle social login
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

