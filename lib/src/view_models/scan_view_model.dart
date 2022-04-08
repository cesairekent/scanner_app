import 'package:flutter/material.dart';

class ScanVM with ChangeNotifier
{
  ScanVM();

  String _scanText = '';
  String get scanText => _scanText;

  updateScanText(String text){
    _scanText = text;
    notifyListeners();
  }
}