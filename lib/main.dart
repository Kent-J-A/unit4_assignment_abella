import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Profile', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/profile_picture.jpg'),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Kent Jasper A. Abella',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 16),
                  Table(
                    columnWidths: {
                      0: FixedColumnWidth(50),
                      1: FlexColumnWidth(2),
                      2: FlexColumnWidth(3),
                    },
                    children: [
                      TableRow(children: [
                        Icon(Icons.email, color: Colors.blueAccent),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Email',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('kentjasper.abella@wvsu.edu.ph',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ]),
                      TableRow(children: [
                        Icon(Icons.phone, color: Colors.green),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Phone',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('+123 456 7890',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ]),
                      TableRow(children: [
                        Icon(Icons.home, color: Colors.orangeAccent),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Address',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                              'Aguinaldo Street, Brgy. II, Roxas City, Capiz',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ]),
                      TableRow(children: [
                        Icon(Icons.school, color: Colors.purple),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Course & Section',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('BSIT - 3A',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ]),
                      TableRow(children: [
                        Icon(Icons.sports_esports, color: Colors.redAccent),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Hobbies',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Exercising, Videogames, Reading',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ]),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'My Biography',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'My name is Kent Jasper Abella, a 21-year-old student from Roxas City currently pursuing a Bachelor of Science in Information Technology at West Visayas State University. I am passionate about staying active through activities like working out, playing badminton, cycling occasionally, and indulging in video games during leisure time. My interests range from exploring historical topics and engaging in fantasy world-building, such as Dune, Warhammer 40k, and A Song of Ice and Fire, to enjoying music genres like R&B and rap.',
                    style: TextStyle(
                        fontSize: 16, color: Colors.black87, height: 1.5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
