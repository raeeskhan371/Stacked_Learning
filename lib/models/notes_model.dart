class NotesModel {
  String title;
  String description;
  String? id;

  NotesModel({required this.title, required this.description, this.id});
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'id': id,
    };
  }

  factory NotesModel.fromMap(Map<String, dynamic> map, String id) {
    return NotesModel(title: map["title"], description: map["description"]);
  }
}
