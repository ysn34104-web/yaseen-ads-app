
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yaseen/main.dart';

class newScreen extends StatefulWidget {
  @override
  State<newScreen> createState() => _newScreen();
}

class viewInfo extends StatefulWidget {
  const viewInfo({super.key});
  @override
  State<viewInfo> createState() => _viewInfoState();
}

class _newScreen extends State<newScreen> {
  TextEditingController idController = TextEditingController();

  // Map with int id as key
  final Map<int, Map<String, dynamic>> students = {
    1234: {'name': 'Yaseen', 'roll': 101, 'age': 16},
    5678: {'name': 'Ali', 'roll': 102, 'age': 17},
  };
  int isFound = 0;
  String result = "";

  void checkID() {
    final enteredId = int.tryParse(idController.text);
    if (enteredId != null && students.containsKey(enteredId)) {
      final student = students[enteredId]!;
      setState(() {
        isFound = 1;
        result =
            'Name: ${student['name']}\nRoll: ${student['roll']}\nAge: ${student['age']}';
      });
    } else {
      setState(() {
        isFound = 2;
        result = 'Student No Found!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Your Ad',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins')),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF667eea), Color(0xFF764ba2)]),
          ),
        ),
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 15, offset: Offset(0, 8))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF667eea), Color(0xFF764ba2)]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: const Text('Enter Details',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: idController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter ID',
                      prefixIcon:
                          const Icon(Icons.badge, color: Color(0xFF667eea)),
                      filled: true,
                      fillColor: Colors.grey[50],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            color: Color(0xFF667eea), width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: checkID,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF667eea),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text('Submit',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (isFound == 1)
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xFF667eea), Color(0xFF764ba2)]),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5)),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(children: [
                            Icon(Icons.check_circle,
                                color: Colors.white, size: 24),
                            SizedBox(width: 10),
                            Text('Student Found!',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ]),
                          const SizedBox(height: 15),
                          Text(result,
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.left),
                        ],
                      ),
                    )
                  else if (isFound == 2)
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.red[200]!),
                      ),
                      child: Row(children: [
                        Icon(Icons.error_outline,
                            color: Colors.red[400], size: 28),
                        const SizedBox(width: 12),
                        Expanded(
                            child: Text(result,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.red[800]))),
                      ]),
                    )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class _viewInfoState extends State<viewInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SMM Expert',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF667eea), Color(0xFF764ba2)]),
          ),
        ),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF667eea), Color(0xFF764ba2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 8)),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.social_distance,
                              size: 50,
                              color: Color(0xFF667eea),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'Social Media Marketing Expert',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Helping businesses grow their online presence',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What I Offer',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF667eea),
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 15),
                    _buildInfoRow(Icons.campaign, 'Ad Campaign Management'),
                    _buildInfoRow(Icons.people, 'Audience Targeting'),
                    _buildInfoRow(Icons.content_paste, 'Content Strategy'),
                    _buildInfoRow(
                        Icons.branding_watermark, 'Brand Development'),
                    _buildInfoRow(Icons.facebook, 'Facebook & Instagram'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Why Choose Me?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF667eea),
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      '• Latest trends & data-driven techniques\n'
                      '• Boost engagement, visibility & sales\n'
                      '• Scale your business effectively\n'
                      '• Increase brand awareness\n'
                      '• Attract more customers',
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.8,
                        color: Colors.black87,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplyForAnAd()),
                  ),
                  // icon: const Icon(Icons.arrow_back, color: Colors.white),
                  label: const Text(
                    'Apply Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF667eea),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
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

Widget _buildInfoRow(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Row(
      children: [
        Icon(icon, size: 22, color: const Color(0xFF667eea)),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black87,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    ),
  );
}
