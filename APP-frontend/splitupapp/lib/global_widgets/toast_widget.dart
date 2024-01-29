import 'package:fluttertoast/fluttertoast.dart';
import 'package:splitupapp/constant/colors.dart';
class ToastWidgit {
  static void bottomToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: AppColors.white,
      textColor: AppColors.darkTextColor,
      fontSize: 14.0,
    );
  }
}