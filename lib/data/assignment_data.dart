class AssignmentData{
  final String subjectName;
  final String topicName;
  final String assignmentDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignmentDate, this.lastDate, this.status);

}

  List<AssignmentData> assignment = [
    AssignmentData("Flutter", "Widgets", "Nov 17, 2024", "Nov 20, 2024", "Pending"),
    AssignmentData("Flutter", "Widgets", "Nov 17, 2024", "Nov 20, 2024", "Submitted"),
    AssignmentData("Flutter", "Widgets", "Nov 17, 2024", "Nov 20, 2024", "Submitted"),
    AssignmentData("Flutter", "Widgets", "Nov 17, 2024", "Nov 20, 2024", "Pending"),
  ];