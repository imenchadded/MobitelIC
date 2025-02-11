import 'package:flutter/material.dart';
import 'package:mobitelic_flutter/Login/login_page.dart';

import 'Sign_Up/SignUpFormComponent.dart';
import 'Sign_Up/OperatorSelectionComponent.dart';
import 'Sign_Up/TermsAndPolicyComponent.dart';
import 'Sign_Up/SignInWithGoogleComponent.dart';
import 'Sign_Up/SignInLinkComponent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOBITELIC',
      initialRoute: '/',
      routes: {
       // '/': (context) => SignUpLayout(),
        '/login': (context) => LoginPage(),
      },
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MOBITELIC APP FOR YOU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//class SignUpLayout extends StatelessWidget {
  //@override
class _MyHomePageState extends  State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          SizedBox(height: 20),
                          SignUpFormComponent(),
                          SizedBox(height: 20),
                          OperatorSelectionComponent(),
                          SizedBox(height: 20),
                          TermsAndPolicyComponent(),
                        ],
                      ),
                    ),
                    /*SizedBox(width: 10),
                    Image.network(
                      'https://dashboard.codeparrot.ai/api/image/Z5zYV-xZjZ9DnCDE/rectangl.png',
                      width: 100,
                      height: 100,
                    ),*/
                  ],
                ),
              ),
            ),            
            Text('Or', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, fontFamily: 'Poppins')),
            Divider(color: Color(0xBFBBBBBB), thickness: 2),
            SizedBox(height: 5),
            SizedBox(height: 10),
            SignInWithGoogleComponent(),
            SizedBox(height: 10),
            SignInLinkComponent(),
          ],
        ),
      ),
    );
  }
}

