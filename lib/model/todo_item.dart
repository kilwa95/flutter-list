class TodoItem {
  TodoItem({
    required this.complited,
    required this.id,
    required this.title,
    this.description,
  });

  final int id;
  final String title;
  final String? description;
  final bool complited;
}
