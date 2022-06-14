import 'package:prototype/localDrive/status.dart';

/// erzeugt ein Objekt das als Zwischenspeicher für die zukünftig zu speichernden Informationen
///  dient und später den JSON-Leseprozess vereinfachen soll
class Content {
  late String projectName = "Default";
  late Enum status = Status.active;
  late String client = "Default";

  String get newProjectName => projectName;

  set newProjectName(String text) {
    projectName = text;
  }

  set fromJson(Map<String, dynamic> json) {
    projectName = json['projectName'];
    status = json['status'];
    client = json['client'];
  }

  Map<String, dynamic> toJson() =>
      {'projectName': projectName, 'status': status, 'client': client};
}



// TODO project id: get highest id + 1