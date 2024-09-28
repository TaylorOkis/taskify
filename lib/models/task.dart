class Task {
  final String name;
  bool completed;

  Task({required this.name, required this.completed});

  void toggleDone() {
    completed = !completed;
  }
}
