import 'package:flutter/material.dart';

class TaskItemCard extends StatefulWidget {
  const TaskItemCard({
    super.key,
  });

  @override
  State<TaskItemCard> createState() => _TaskItemCardState();
}

class _TaskItemCardState extends State<TaskItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, top: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title will be here',
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text('Description'),
            Text("Date: 12-12-2020"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text(
                    "New",
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.blue,
                ),
                Wrap(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever,color: Colors.red,)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}