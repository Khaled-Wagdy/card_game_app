import 'package:card_game_app/core/widgets/bottom_nav_bar.dart';
import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: "Achievements"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    AchievementCard(
                      title: "Beginner",
                      subtitle: "Unlock your first card!",
                      progress: 0.25,
                      percentText: "25%",
                    ),
                    SizedBox(height: 16),
                    AchievementCard(
                      title: "Collector",
                      subtitle: "Collect 10 different Cards!",
                      progress: 0.60,
                      percentText: "60%",
                    ),
                    SizedBox(height: 16),
                    AchievementCard(
                      title: "Master",
                      subtitle: "Unlock all Cards!",
                      progress: 0.10,
                      percentText: "10%",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class AchievementCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double progress;
  final String percentText;

  const AchievementCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.percentText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEAD7F7),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.purple.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(subtitle, style: TextStyle(color: Colors.grey.shade700)),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 8,
                  backgroundColor: Colors.purple.shade100,
                  valueColor: const AlwaysStoppedAnimation(Color(0xFF8E44AD)),
                ),
              ),
              const SizedBox(width: 8),
              Text(percentText),
            ],
          ),
        ],
      ),
    );
  }
}
