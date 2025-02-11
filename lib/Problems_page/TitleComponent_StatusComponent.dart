import 'package:flutter/material.dart';

class TitleComponent_StatusComponent extends StatefulWidget {
  final Map<String, bool> initialCheckboxStates;

  TitleComponent_StatusComponent({
    Key? key,
    this.initialCheckboxStates = const {
      'Network': false,
      'Debit Connexion': false,
      'Price Service': false,
      'Couverture Reseau': false,
      'Reachability': false,
      'No Problem': false,
      'Other1': false,
      'Other2': false,
    },
  }) : super(key: key);

  @override
  _TitleComponent_StatusComponentState createState() => _TitleComponent_StatusComponentState();
}

class _TitleComponent_StatusComponentState extends State<TitleComponent_StatusComponent> {
  late Map<String, bool> checkboxStates;

  @override
  void initState() {
    super.initState();
    checkboxStates = Map.from(widget.initialCheckboxStates);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(

          
padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

          width: double.infinity,
        //  padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF008BA1),
                    width: 2,
                  ),
                ),
                child: Text(
                  'Problem Encountered',
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF006D60),
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Status',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF6C757D),
                ),
              ),
              SizedBox(height: 14),


              Container(       
                           width : 350,

                decoration: BoxDecoration(
                  
                   boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 80, 73, 73).withOpacity(0.2), // Shadow color
                spreadRadius: 5, // Spread radius
                blurRadius: 5, // Blur radius
                offset: Offset(0,9), // Shadow position
              ),
            ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFFDEE2E6),
                    width: 3,




                  ),
                ),
                child: Column(
                  children: checkboxStates.entries.map((entry) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Row(
                        children: [
     Material(
                            color: Colors.transparent, // Make the Material background transparent
                            child:
                            InkWell(
                            onTap: () {
                              setState(() {
                                checkboxStates[entry.key] = !checkboxStates[entry.key]!; // Toggle the checkbox state
                              });
                            },
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Checkbox(
                                value: checkboxStates[entry.key], // Use the current state
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkboxStates[entry.key] = value ?? false; // Update the state
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                side: BorderSide(
                                  color: Color(0xFFB2ADAD),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          ),

                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              entry.key,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: entry.key == 'Debit Connexion' || entry.key == 'Price Service'
                                    ? Color(0xFF008BA1)
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
