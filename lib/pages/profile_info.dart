// Import statements
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/user_controller.dart';
import 'package:flutter/cupertino.dart';

class ProfileInfoPage extends StatelessWidget {
  final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'), // Judul halaman
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              // Informasi Profil
              buildProfileInfo(Icons.person, userController.name.value, verticalPadding: 20.0),
              buildProfileInfo(Icons.email, userController.email.value, verticalPadding: 20.0),
              buildProfileInfo(Icons.phone, userController.phone.value, verticalPadding: 20.0),
              // Tambahan informasi seperti "Your Favorite Movie" dan "Payment" bisa ditambahkan di sini
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun informasi profil tanpa border
  Widget buildProfileInfo(IconData iconData, String value, {double verticalPadding = 10.0, double containerWidth = 350.0}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Margin kiri kanan 10
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5), // Padding vertikal dan horizontal
      width: containerWidth, // Lebar Container
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData, // Icon based on title
            size: 30.0, // Adjust the icon size as needed
          ),
          SizedBox(width: 10), // Add some spacing between icon and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
