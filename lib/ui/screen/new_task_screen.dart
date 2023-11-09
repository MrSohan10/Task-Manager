import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/add_new_task.dart';

import '../widget/profile_summary.dart';
import '../widget/summary_card.dart';
import '../widget/task_item_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()));
        },
        child: Icon(Icons.add),
      ),

      body: SafeArea(
        child: Column(
          children: [
            const ProfileSummary(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SummaryCard(count: "92", title: "New Task"),
                  const SummaryCard(count: "92", title: "in progress"),
                  const SummaryCard(count: "92", title: "Completed"),
                  const SummaryCard(count: "92", title: "Cancelled"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const TaskItemCard();
              },
            )),
          ],
        ),
      ),
    );
  }
}


