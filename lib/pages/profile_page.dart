import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import CupertinoIcons
import 'package:get/get.dart';
import 'package:getx/controller/user_controller.dart';
import 'package:getx/pages/profile_info.dart';

class ProfilePage extends StatelessWidget {
  final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              // Informasi Profil
              buildProfileInfo(Icons.person_outline, userController.username.value, verticalPadding: 20.0, showIcon: false), // Set showIcon to false for username
              buildTextButton(CupertinoIcons.person, 'Account Detail', () {
                Get.to(ProfileInfoPage());
              }),
              buildTextButton(CupertinoIcons.heart, 'Your Favorite Movie', () {
                // Tambahkan logika yang sesuai saat teks "Your Favorite Movie" ditekan
              }),
              buildTextButton(CupertinoIcons.money_dollar, 'Payment', () {
                // Tambahkan logika yang sesuai saat teks "Payment" ditekan
              }),
              ElevatedButton(
                onPressed: () {
                  // logika untuk (logout)
                },
                child: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun informasi profil tanpa border
  Widget buildProfileInfo(IconData iconData, String value, {double verticalPadding = 10.0, double containerWidth = 350.0, bool showIcon = true}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Margin kiri kanan 10
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5), // Padding vertikal dan horizontal
      width: containerWidth, // Lebar Container
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showIcon) // Conditionally add the icon based on the showIcon flag
            Icon(
              iconData, // Icon based on title
              size: 30.0, // Adjust the icon size as needed
            ),
          if (showIcon) SizedBox(width: 10), // Add some spacing between icon and text if icon is shown
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

  // Fungsi untuk membangun teks yang berfungsi seperti tombol
  Widget buildTextButton(IconData iconData, String text, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed, // Aksi saat teks ditekan
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Margin kiri kanan 10
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5), // Padding vertikal dan horizontal
        width: 350, // Lebar Container
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Memusatkan teks secara vertikal
          children: [
            Icon(
              iconData, // Icon for the button
              size: 30.0, // Adjust the icon size as needed
            ),
            SizedBox(width: 10), // Add some spacing between icon and text
            Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
