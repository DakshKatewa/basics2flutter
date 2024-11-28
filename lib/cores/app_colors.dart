import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const Color lightGreen = Color(0xFFDFF7E2);
  static const Color mainGreen = Color(0xFF00D09E);
}

/*
  AppColors._() --> private named constructor in the AppColors class. 
  
  The _() is a private named constructor. By convention, the underscore (_) makes the constructor private, meaning it can only be accessed within the file where it is defined.

  Importance -->  prevent the creation of instances of the AppColors class.
  Since AppColors is being used as a utility class to define constants (like mainGreen), you don't want or need instances of it.
  You can only access these members as AppColors.mainGreen, and no instance can be created.
 */