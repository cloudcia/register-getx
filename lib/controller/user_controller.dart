import 'package:get/get.dart';

class UserController extends GetxController {
  var username = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var name = ''.obs;
  var phone = ''.obs;
  var address = ''.obs;

  void setBasicDetails({
    required String username,
    required String email,
    required String password,
  }) {
    this.username.value = username;
    this.email.value = email;
    this.password.value = password;
  }

  void setAdditionalDetails({
    required String name,
    required String phone,
    required String address,
  }) {
    this.name.value = name;
    this.phone.value = phone;
    this.address.value = address;
  }
}
