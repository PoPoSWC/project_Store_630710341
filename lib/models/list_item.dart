class TodoItem {
  final String county;
  final int id;
  final int p1;
  final int p2;
  final int p3;
  final int p4;

  TodoItem({
    required this.county,
    required this.id,
    required this.p1,
    required this.p2,
    required this.p3,
    required this.p4,

  });

  factory TodoItem.fromJson(Map<String, dynamic> json) {
    return TodoItem(
      county: json['county'],
      id: json['id'],
      p1: json['product 1'],
      p2: json['product 2'],
      p3: json['product 3'],
      p4: json['product 4'],
    );
  }
}