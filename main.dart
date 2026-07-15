
import 'package:flutter/material.dart';

void main() {
  runApp(const HeartHealApp());
}

class HeartHealApp extends StatelessWidget {
  const HeartHealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HeartHeal',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF7F5AF0),
        scaffoldBackgroundColor: const Color(0xFFF7F8FC),
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> tips = const [
    {
      "title": "Be honest and respectful",
      "desc":
          "Tell your partner clearly why the relationship is not working for you."
    },
    {
      "title": "Choose the right time",
      "desc":
          "Avoid breaking up during an argument or a stressful moment."
    },
    {
      "title": "Set healthy boundaries",
      "desc":
          "Give each other space after the breakup to heal emotionally."
    },
    {
      "title": "Avoid blame",
      "desc":
          "Focus on your feelings instead of attacking the other person."
    },
    {
      "title": "Take care of yourself",
      "desc":
          "Spend time with friends, family, and activities that make you happy."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'HeartHeal',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.favorite, color: Colors.pink.shade400),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                gradient: const LinearGradient(
                  colors: [Color(0xFF7F5AF0), Color(0xFFFF6B9A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.25),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Move on with confidence",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Fun breakup tips, emotional support ideas, and healing advice — all in one place.",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Icon(
                    Icons.emoji_emotions,
                    size: 70,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              "Featured",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),

            SizedBox(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _featureCard(
                    "Fresh Start",
                    "Take the first step toward healing",
                    "https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&fit=crop&w=800&q=80",
                  ),
                  _featureCard(
                    "Confidence",
                    "Rebuild self-worth after a breakup",
                    "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=800&q=80",
                  ),
                  _featureCard(
                    "New Goals",
                    "Focus on your future and dreams",
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=800&q=80",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "5 Free Tips",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Chip(label: Text("FREE"))
              ],
            ),

            const SizedBox(height: 12),

            ...tips.map((tip) => _tipCard(
                  title: tip["title"]!,
                  desc: tip["desc"]!,
                )),

            const SizedBox(height: 28),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 18,
                    offset: const Offset(0, 8),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(Icons.workspace_premium,
                            color: Colors.orange, size: 30),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          "Premium Healing Pack",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    "₹1000 / month",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7F5AF0),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Unlock exclusive emotional healing exercises designed to help you recover from your last relationship.",
                    style: TextStyle(color: Colors.black54, height: 1.5),
                  ),
                  const SizedBox(height: 18),
                  _premiumItem("Daily healing exercises"),
                  _premiumItem("30-day recovery challenge"),
                  _premiumItem("Confidence rebuilding tasks"),
                  _premiumItem("Mood tracking"),
                  _premiumItem("Exclusive relationship recovery guides"),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF7F5AF0),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        elevation: 8,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Payment gateway can be connected here"),
                          ),
                        );
                      },
                      child: const Text(
                        "Upgrade to Premium",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _tipCard({required String title, required String desc}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 14,
            offset: const Offset(0, 6),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xFFEEE8FF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.favorite, color: Color(0xFF7F5AF0)),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  desc,
                  style: const TextStyle(
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _premiumItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.green),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget _featureCard(String title, String subtitle, String imageUrl) {
    return Container(
      width: 240,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.05),
              Colors.black.withOpacity(0.65),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
