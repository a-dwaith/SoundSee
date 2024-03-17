import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:soundsee/pages/componets/button.dart';
import 'package:soundsee/pages/componets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final udidController = TextEditingController();
  final phoneController = TextEditingController();
  final confrimpasswordController = TextEditingController();
/*
  final docRef = FirebaseFirestore.instance.collection('user_details').doc(userId);

  Future<void> _getUserData() async {
    try {
      final DocumentSnapshot snapshot = await docRef.get();
      if (snapshot.exists) {
        final data = snapshot.data()!;
        nameController.text = data['name'];
        emailController.text = data['email'];
        phoneController.text = data['mobile_no'];
        // Update other fields as needed
      } else {
        // Handle case where user data not found
      }
    } catch (e) {
      // Handle errors
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserData();
  }
*/
  // todo To be filled latter
  void updateUserProfile() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // Just a Lock Logo
              children: [
                const Text(
                  'Update profile details',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  'lib/assets/images/update_profile.json',
                  width: 300,
                  height: 300,
                  fit: BoxFit.fill,
                ),
                // Welcome note
                const SizedBox(height: 25),
                MyTextfield(
                  controller: nameController,
                  hintText: "Name",
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextfield(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                // Password Text box
                MyTextfield(
                  controller: phoneController,
                  hintText: "Mobile number",
                  obscureText: false,
                ),
                // const SizedBox(height: 10),
                // MyTextfield(
                // controller: udidController,
                // hintText: "UDID",
                // obscureText: false,
                // ),
                // const SizedBox(height: 10),
                const SizedBox(height: 50),
                MyButton(
                  text: 'Update profile',
                  onTap: updateUserProfile,
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
