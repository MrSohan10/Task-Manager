import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/controller/auth_controller.dart';
import 'package:task_manager/ui/screen/login_screen.dart';
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
  Uint8List imageBytes = const Base64Decoder().convert(AuthController.user?.photo?? '');
  
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
            child: AuthController.user?.photo == null
                ? const Icon(Icons.person_2_outlined)
                : ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.memory(imageBytes,fit: BoxFit.fill,),
                  )),
        title: Text(
          fullName,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        subtitle: Text(
          AuthController.user?.email ?? '',
          style: const TextStyle(color: Colors.white),
        ),
        trailing: IconButton(
          onPressed: () async {
            await AuthController.clearAuthData();
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (route) => false);
          },
          icon: Icon(Icons.logout_outlined),
        ));
  }

  String get fullName {
    return '${AuthController.user?.firstName ?? ''} ${AuthController.user?.lastName ?? ''}';
  }
}
