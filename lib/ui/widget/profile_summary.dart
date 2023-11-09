import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/update_profile.dart';

class ProfileSummary extends StatefulWidget {
  const ProfileSummary({
    super.key,
    this.enableOnTap = true,
  });

  final bool enableOnTap;

  @override
  State<ProfileSummary> createState() => _ProfileSummaryState();
}

class _ProfileSummaryState extends State<ProfileSummary> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if (widget.enableOnTap) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const UpdateProfile()));
        }
      },
      tileColor: Colors.green,
      leading: CircleAvatar(
        child: Icon(Icons.person_2_outlined),
      ),
      title: Text(
        "Rabbil Hassan",
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      subtitle: Text(
        "rabbil@gmail.com",
        style: const TextStyle(color: Colors.white),
      ),
      trailing:widget.enableOnTap? const Icon(Icons.arrow_forward):null,
    );
  }
}
