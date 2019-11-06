import 'package:flutter_web/material.dart';

class Admin {
  String username;
  String password;

  Admin(
      {this.password,
        this.username,
        }):assert(password!=null && username != null);
}
// adress email number sms notification tag name lastname password
