import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const YaseenApp());
}

class YaseenApp extends StatelessWidget {
  const YaseenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaseen Advertising Department',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      ),
      home: const MainMenu(),
    );
  }
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  String currentScreen = "main";

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Map<String, dynamic>? selectedUser;

  final Map<String, Map<String, String>> users = {
    "yaseen": {
      "password": "1234",
      "name": "Yaseen Shahid",
      "ad": "500/day",
      "details": "Facebook ad for selling products"
    },
    "shaheryar": {
      "password": "1111",
      "name": "Hafiz Shaher Yar",
      "ad": "600/day",
      "details": "Youtube ad for Quran recitation"
    },
    "abdullah": {
      "password": "0000",
      "name": "Abdullah Mumtaz",
      "ad": "600/day",
      "details": "Social media marketing"
    },
    "nazeer": {
      "password": "1122",
      "name": "Nazeer Alam",
      "ad": "No ad yet",
      "details": "Nazeer pay fee only. He cannot apply for ad."
    },
    "shahbaz": {
      "password": "2222",
      "name": "Shahbaz Mumtaz",
      "ad": "700/day",
      "details": "Study in 10th class"
    },
    "awais": {
      "password": "3333",
      "name": "Muhammad Awais",
      "ad": "220/day",
      "details": "Study in 6th class"
    },
    "faizan": {
      "password": "4444",
      "name": "Faizan Ali",
      "ad": "220/day",
      "details": "Study in 12th class"
    },
  };

  void searchAd() {
    String username = usernameController.text.trim().toLowerCase();
    String password = passwordController.text.trim();

    if (users.containsKey(username) &&
        users[username]!["password"] == password) {
      setState(() {
        selectedUser = users[username];
      });
    } else {
      setState(() {
        selectedUser = null;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enter correct username and password!")),
      );
    }
  }

  Widget buildButton(String text, VoidCallback onTap,
      {Color color = const Color(0xFF4b6cb7)}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onTap,
      child: Text(text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    );
  }

  void exitApp() {
    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF4b6cb7), Color(0xFF182848)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Yaseen Advertising Department",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // Content
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Builder(
                    builder: (_) {
                      if (currentScreen == "main") {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Welcome to our Advertising Services",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 20),
                            buildButton("Apply for an Ad",
                                () => setState(() => currentScreen = "apply")),
                            const SizedBox(height: 15),
                            buildButton("View your Ad",
                                () => setState(() => currentScreen = "view")),
                            const SizedBox(height: 15),
                            buildButton("Exit", exitApp, color: Colors.grey),
                          ],
                        );
                      } else if (currentScreen == "apply") {
                        return Column(
                          children: [
                            const Text("Apply for an Advertisement",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF8D7DA),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text("This feature is pending!",
                                  style: TextStyle(color: Color(0xFF721c24))),
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () => setState(() => currentScreen = "main"),
                              child: const Text("← Back to Main Menu",
                                  style: TextStyle(
                                      color: Color(0xFF4b6cb7),
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        );
                      } else if (currentScreen == "view") {
                        return Column(
                          children: [
                            const Text("View Your Advertisement",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 20),
                            buildButton("Search your Ad",
                                () => setState(() => currentScreen = "search")),
                            const SizedBox(height: 15),
                            buildButton("Main Menu",
                                () => setState(() => currentScreen = "main"),
                                color: Colors.grey),
                          ],
                        );
                      } else if (currentScreen == "search") {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text("Search Your Advertisement",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 20),
                            TextField(
                              controller: usernameController,
                              decoration: const InputDecoration(
                                labelText: "Username",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 20),
                            buildButton("Search", searchAd, color: Colors.green),
                            const SizedBox(height: 15),
                            GestureDetector(
                              onTap: () => setState(() => currentScreen = "view"),
                              child: const Text("← Back",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF4b6cb7),
                                      fontWeight: FontWeight.w600)),
                            ),
                            if (selectedUser != null) ...[
                              const SizedBox(height: 20),
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF8F9FA),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Profile Details",
                                        style: TextStyle(
                                            color: Color(0xFF4b6cb7),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    const SizedBox(height: 10),
                                    infoRow("Name", selectedUser!["name"]!),
                                    infoRow("Ad", selectedUser!["ad"]!),
                                    infoRow("Ad Details", selectedUser!["details"]!),
                                    const SizedBox(height: 10),
                                    GestureDetector(
                                      onTap: () {
                                        usernameController.clear();
                                        passwordController.clear();
                                        setState(() => selectedUser = null);
                                      },
                                      child: const Text("Search Again",
                                          style: TextStyle(
                                              color: Color(0xFF4b6cb7),
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                          ],
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ),

                // Footer
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.black12)),
                  ),
                  child: const Text(
                    "© 2023 Yaseen Advertising Department. All rights reserved.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
              width: 100,
              child: Text(label,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black54))),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
