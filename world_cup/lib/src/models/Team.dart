import 'dart:convert';
import 'package:http/http.dart' as http;
class Team{
  final String nameEn;
  final String flag;
  final String fiFaCode;
  final String iso2;
  final String groups;
  final int id;
  Team(this.nameEn,this.flag,this.fiFaCode,this.iso2,this.groups,this.id);
  factory Team.fromJsonObject(Map<String, dynamic> jsonObject){
    return Team(
      jsonObject["nameEn"] as String,
      jsonObject["flag"] as String,
      jsonObject["fiFaCode"] as String,
      jsonObject["iso2"] as String,
      jsonObject["groups"] as String,
      jsonObject["id"] as int,
    );
  }
}
List<Map<String,dynamic>> convertFromJsonToListOfObject(String jsonString){
  final jsonObject  = jsonDecode(jsonString);
  return jsonObject;
}
Future<List<Team>> getTeamFromBackend() async{
  List<Team> listTeam = [];
  const url = "http://api.cup2022.ir/api/v1/team";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final jsonString = response.body;
    final jsonObject = convertFromJsonToListOfObject(jsonString);
    for (var i = 0; i < jsonObject.length; i++) {
    final team = Team.fromJsonObject(jsonObject[i]);
    listTeam.add(team);
  }
  return listTeam;
}