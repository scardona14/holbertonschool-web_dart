Future<void> userCount() async {
  int count = await fetchUsersCount();
  print(count);
}