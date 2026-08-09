import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Tracker'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Today’s Workout',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          _workoutCard(
            'Push Ups',
            '3 sets × 12 reps',
            Icons.fitness_center,
          ),
          _workoutCard(
            'Squats',
            '3 sets × 15 reps',
            Icons.directions_run,
          ),
          _workoutCard(
            'Plank',
            '3 sets × 30 seconds',
            Icons.accessibility_new,
          ),
          _workoutCard(
            'Lunges',
            '3 sets × 10 reps',
            Icons.directions_walk,
          ),
        ],
      ),
    );
  }

  Widget _workoutCard(
    String title,
    String subtitle,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(icon),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
