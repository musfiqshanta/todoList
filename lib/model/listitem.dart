class ListItems {
  late final String title;
  bool isChecked;
  int index;
  ListItems({required this.title, this.isChecked = false, this.index=0});

  void troggole() {
    isChecked = !isChecked;
  }
}
