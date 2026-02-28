import 'package:flutter/material.dart';
import '../models/habit_model.dart';
import '../widgets/habit_card.dart';
import 'add_habit_page.dart';
import 'edit_habit_page.dart';
import '../widgets/progress_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Habit> habits = [];

  double get progress {
    if (habits.isEmpty) return 0;
    int completed =
        habits.where((habit) => habit.isCompleted).length;
    return completed / habits.length;
  }

  void addHabit(Habit habit) {
    setState(() {
      habits.add(habit);
    });
  }

  void updateHabit(int index, Habit updatedHabit) {
    setState(() {
      habits[index] = updatedHabit;
    });
  }

  void deleteHabit(int index) {
    setState(() {
      habits.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Habit Tracker"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF2ECC71),
        child: const Icon(Icons.add),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AddHabitPage(),
            ),
          );

          if (result != null && result is Habit) {
            addHabit(result);
          }
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Progress Section
                ProgressSection(
      totalHabits: habits.length,
      completedHabits:
          habits.where((h) => h.isCompleted).length,
    ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  return HabitCard(
                    habit: habits[index],
                    onChanged: (value) {
                      setState(() {
                        habits[index].isCompleted = value!;
                      });
                    },
                    onEdit: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                EditHabitPage(habit: habits[index]),
                          ),
                        );

                        if (result == "delete") {
                          deleteHabit(index);
                        } else if (result != null && result is Habit) {
                          updateHabit(index, result);
                        }
                      },
                    onDelete: () => deleteHabit(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}