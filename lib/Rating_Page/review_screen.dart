import 'package:flutter/material.dart';
import 'package:mobitelic_flutter/Rating_Page/camera.dart';
import 'package:mobitelic_flutter/Thanks_page/thank_you_screen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  int rating = 0; // Default rating
  int hoveredRating = 0; // Rating when hovered
  TextEditingController reviewController = TextEditingController(
    text: 'Lorem ipsum dolor sit amet, adipiscing elit.\nSed at gravida nulla tempor, neque. Duis\nquam ut netus donec enim vitae ac diam.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // const SizedBox(height: 60),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0xFF006D60)),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              //const SizedBox(height: 20),
              Center(
                child: Text(
                  'Give a Review',
                  style: TextStyle(
                    color: const Color(0xFF80D676).withOpacity(0.7),
                    fontSize: 24,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Color(0xFF006D60)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Give a Review',
                    style: TextStyle(
                      color: Color(0xFF171725),
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: List.generate(5, (index) {
                  return MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        hoveredRating = index + 1; // Set hovered rating
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        hoveredRating = 0; // Reset hovered rating
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          rating = index + 1; // Update the rating based on the tapped star
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22),
                      
                        child: Icon(
                        
                          index < rating || index < hoveredRating
                              ? Icons.star // Filled star (yellow)
                              : Icons.star_border, // Empty star (gray)
                          color: index < rating || index < hoveredRating
                              ? Colors.yellow // Color for filled star
                              : Colors.grey, // Color for empty star
                          size: 50, // Size of the star
                        ),
                        ),
                      ), 
                    
                  );
                }),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Detail Review',
                    style: TextStyle(
                      color: Color(0xFF9CA4AB),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.07,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEFEFE),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: const Color(0xFF34C759),
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      controller: reviewController,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(
                        color: Color(0xFF171725),
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              Row(
                
                children: [
                                    const SizedBox(width: 50),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://static.actu.fr/uploads/2019/10/AdobeStock_281125225-960x640.jpeg',
                      width: 100,
                      height: 86,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 50),
                  Container(
                    width: 95,
                    height: 85,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEFEFE),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFE9EBED),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
             IconButton(
  icon: Icon(Icons.camera_alt_sharp, color: Color.fromARGB(255, 13, 190, 66)),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CameraPage()), // Navigate to CameraPage
    );
  },
  iconSize: 35,
), 
                        const SizedBox(height: 8),
                        const Text(
                          'Add Photo',
                          style: TextStyle(
                            color: Color(0xFF171725),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.07,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const ThankYouScreen()),
                  );
                    // Handle review submission
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF34C759),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Send Review',
                    style: TextStyle(
                      color: Color(0xFFFEFEFE),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.07,
                    ),
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}

