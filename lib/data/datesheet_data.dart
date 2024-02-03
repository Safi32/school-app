class DateSheet{
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DateSheet(this.date, this.monthName, this.subjectName, this.dayName, this.time);

}

  List<DateSheet> datesheet = [
    DateSheet(11, "January", "MAD", "Monday", "9:00 AM"),
    DateSheet(12, "January", "Flutter", "Tuesday", "10:00 AM"),
    DateSheet(13, "January", "Web Engineering ", "Wednesday", "11:00 AM"),
    DateSheet(14, "January", "Java", "Thursday", "12:00 AM"),
    DateSheet(15, "January", "Database", "Friday", "7:00 AM"),
    DateSheet(16, "January", "Data Structures", "Saturday", "8:30 AM"),
  ];