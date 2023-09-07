import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/controller/user_controller.dart';
import 'package:getx/pages/register.dart';

class RegistrationPage2 extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final UserController userController = Get.find<UserController>();

  void onRegister() {
    final fullName = fullNameController.text;
    final phoneNumber = phoneNumberController.text;
    final address = addressController.text;

    userController.setAdditionalDetails(
      name: fullName,
      phone: phoneNumber,
      address: address,
    );

    Get.toNamed('/profilePage');
  }

  void onBack() {
    Get.back(); // Navigate back to the previous page (RegisterPage)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              // Logo widget
              Image.asset(
                'assets/cia.PNG', // Replace with your logo image path
                width: 150, // Adjust the width as needed
                height: 150, // Adjust the height as needed
              ),
              SizedBox(height: 20),
              Text(
                'Complete Your Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Please provide additional information',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  icon: Icon(CupertinoIcons.person),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  icon: Icon(CupertinoIcons.phone),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  icon: Icon(CupertinoIcons.location),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: onBack,
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: onRegister,
                    child: Text('Register'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
