import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstController extends GetxController {
  RxString work = RxString('');
  RxnString errorText = RxnString(null);
  Rxn<Function()> submitFunc = Rxn<Function()>(null);

  @override
  void onInit() {
    super.onInit();
    debounce<String>(work, validations,
        time: const Duration(milliseconds: 500));
  }

  void validations(String val) async {
    errorText.value = null;
    submitFunc.value = null;
    if (val.isNotEmpty) {
      if (lengthOK(val)) {
        print('Tüm doğrulamalar başarılı');
        errorText.value = null;
      }
    }
  }

  // Minimum 5 karakter olmasını istedik ve bir nevi boş kalmasını engelledik
  bool lengthOK(String val, {int minLen = 5}) {
    if (val.length < minLen) {
      errorText.value = 'minimum 5 harf';
      return false;
    }
    return true;
  }

  void workChanged(String val) {
    work.value = val;
  }
}
