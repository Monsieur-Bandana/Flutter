import 'package:prototype/localDrive/status.dart';

class Content {
  late String projectName = "Default";
  late Enum status = Status.active;
  late String Auftraggeber = "Default";

  String get newProjectName => projectName;

  set newProjectName(String text) {
    projectName = text;
  }
}



// TODO project id: get highest id + 1