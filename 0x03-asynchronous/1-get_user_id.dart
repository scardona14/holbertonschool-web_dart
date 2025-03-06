import '1-util.dart';
import dart:convert;

Future<String> getUserId() async {
  String date = await fetchUserData();
  Map dataMap = jsonDecode(date);

  return dataMap['id'];
}