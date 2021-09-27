import 'package:campeonato_brasileiro/data/http/http.dart';
import 'package:campeonato_brasileiro/domain/entities/team_entities.dart';

class TeamModel{
  final int? timeId;
  final String? nomePopular;
  final String? sigla;
  final String? escudo;

  TeamModel({
    required this.timeId,
    required this.nomePopular,
    required this.sigla,
    required this.escudo
       }
    );

factory TeamModel.fromJson(Map json) {
    if (!json.keys
        .toSet()
        .containsAll(['time_id', 'nome_popular', 'sigla', 'escudo'])) {
      throw HttpError.invalidData;
    }
    return TeamModel(
        timeId: json['time_id'] as int,
        nomePopular: json['nome_popular'] as String,
        sigla: json['sigla'] as String,
        escudo: json['escudo'] as String);
  }
  
  TeamEntities toEntity()=> TeamEntities(
    timeId: timeId,
    nomePopular: nomePopular,
    sigla: sigla,
    escudo: escudo,


  );

  factory TeamModel.fromEntity(TeamEntities entity) =>
      TeamModel(
        timeId: entity.timeId ,
        nomePopular: entity.nomePopular,
       sigla: entity.sigla,
        escudo: entity.escudo,
          


          );



  Map toJson() =>{
    "time_id": timeId,
    "nome_popular": nomePopular,
    "sigla": sigla,
    "escudo": escudo
  };
  
  }