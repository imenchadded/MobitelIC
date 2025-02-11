import 'package:flutter/material.dart';

class OperatorSelectionComponent extends StatefulWidget {
  const OperatorSelectionComponent({Key? key}) : super(key: key);


  @override
  _OperatorSelectionComponentState createState() => _OperatorSelectionComponentState();
}

class _OperatorSelectionComponentState extends State<OperatorSelectionComponent> {
  String? selectedOperator;
  int selectedOption = 1; 

  @override
  Widget build(BuildContext context) {
    return Container(
      
     width: double.infinity,
      constraints: BoxConstraints(minWidth: 300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OPERATOR',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              
              Expanded(
                
                child: ListTile(
                  title: Text(
                    'OOREDOO',
                    style: TextStyle(color: const Color.fromARGB(255, 250, 0, 0) ,fontSize: 8 , fontWeight: FontWeight.bold,  ),
                  ),
                  leading: Radio<int>(
                    value: 1,
                    groupValue: selectedOption,
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                        print("Button value: $value");
                      });
                    },
                  ),
                ),
              ),

Expanded(
                child: 
                  ListTile(
                title:  Text(
                  'ORANGE',
                style: TextStyle(color: const Color.fromARGB(255, 247, 149, 2),fontSize: 9 ,  fontWeight: FontWeight.bold,),
                ),
                leading: Radio<int>(
                  value: 2,
                  groupValue: selectedOption,
                  activeColor: Colors.orange, // Added activeColor
                  fillColor:  WidgetStateProperty.all(Colors.orange), // Added fillColor
                  splashRadius: 25, // Added splashRadius
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
              ),
),

    Expanded(
                child: ListTile(
                title:  Text('TELECOM ' ,
                style:  TextStyle(color: const Color.fromARGB(255, 2, 157, 247),fontSize: 9 , fontWeight: FontWeight.bold,),),
                leading: Radio<int>(
                  value: 3,
                  groupValue: selectedOption,
                    activeColor: Colors.blue, // Added activeColor
                  fillColor:  WidgetStateProperty.all(Colors.blue), // Added fillColor
                  splashRadius: 25, // Added splashRadius
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;

                    });
                  },
                ),
              ),
    ),
          /*    ),
              SizedBox(width: 14),
              _buildOperatorOption(
                'Orange',
                'https://dashboard.codeparrot.ai/api/image/Z5zYV-xZjZ9DnCDE/3-3.png',
                Color(0xFFFCAC00),
              ),
              SizedBox(width: 14),
              _buildOperatorOption(
                'Telecom',
                'https://dashboard.codeparrot.ai/api/image/Z5zYV-xZjZ9DnCDE/3-2.png',
                Color(0xFF12ABE7),
              ),*/
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOperatorOption(String name, String imagePath, Color textColor) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedOperator = name;
        });
      },
      
    );
  }
  
}

