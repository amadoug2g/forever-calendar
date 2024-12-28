class Note {
  Note({
    required this.id,
    required this.title,
    required this.description,
    required this.tags,
    required this.createdTime,
});

  String id;
  String title;
  String description;
  List<Tag> tags = const [];
  DateTime createdTime;
}

enum Tag {
  birthday,
  meeting,
  anniversary
}
