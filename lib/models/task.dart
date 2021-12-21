class Task {
  String name;
  bool isCompleted;

  Task({
    this.isCompleted = false,
    required this.name,
  });

  void isCompletedToggle() {
    isCompleted = !isCompleted;
  }

  
}
