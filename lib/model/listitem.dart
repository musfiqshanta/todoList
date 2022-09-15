class ListItems {
  late final String title;
  bool isChecked;

  ListItems({required this.title, this.isChecked = false});

  void troggole() {
    isChecked = !isChecked ;
  }
}
