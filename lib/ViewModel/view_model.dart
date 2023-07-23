import 'package:know_our_school/Model/model.dart';

class ViewModel {
  SchoolInformation schoolInformation = SchoolInformation.fromJson({
    "School Name": "The Perfect School",
    "School Address": "Somewhere in the world",
    "Number of Students": "235 Students",
    "Number of Teachers": "17 Teacher"
  });
  String schoolName = "School Name";
  String schoolAddress = "School Address";
  String studentsNo = "Number of Students";
  String teachersNo = "Number of Teachers";

  void showInfo() {
    schoolName = schoolInformation.schoolName;
    schoolAddress = schoolInformation.schoolAddress;
    studentsNo = schoolInformation.noOfStudents;
    teachersNo = schoolInformation.noOfTeacher;

  }
}
