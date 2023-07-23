class SchoolInformation {
  String schoolName;
  String schoolAddress;
  String noOfStudents;
  String noOfTeacher;

  SchoolInformation(
      {required this.schoolName,
      required this.schoolAddress,
      required this.noOfStudents,
      required this.noOfTeacher});

  SchoolInformation.fromJson(Map<String, dynamic> json)
      : this(
            schoolName: json['School Name'],
            schoolAddress: json['School Address'],
            noOfStudents: json["Number of Students"],
            noOfTeacher: json['Number of Teachers']);
}
