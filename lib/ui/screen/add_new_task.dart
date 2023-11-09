import 'package:flutter/material.dart';
import 'package:task_manager/ui/widget/body_background.dart';
import 'package:task_manager/ui/widget/profile_summary.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           const ProfileSummary(),
           Expanded(
               child: BodyBackground(
                 child: Padding(
                   padding: const EdgeInsets.all(24),
                   child: SingleChildScrollView(
                     reverse: true,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        const SizedBox(height: 48,),
                         Text('Add New Task',style: Theme.of(context).textTheme.titleLarge,),
                         const SizedBox(height: 16,),
                         TextFormField(
                           decoration:const InputDecoration(
                             labelText: "Subject",
                             hintText: "Subject",
                           ),
                         ),
                         const SizedBox(height: 8,),
                         TextFormField(
                           maxLines:8,
                           decoration:const  InputDecoration(
                             hintText: "Description",
                           ),
                         ),
                         const SizedBox(height: 16,),
                         SizedBox(
                           width: double.infinity,
                           child: ElevatedButton(
                             onPressed: (){},
                             child: const Text("Save",style: TextStyle(fontSize: 16),),
                           ),
                         )

                       ],
                     ),
                   ),
                 ),
               )

           ),

          ],
        ),
      ),
    );
  }
}
