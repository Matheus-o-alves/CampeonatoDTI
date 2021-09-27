import 'dart:io';

import 'package:campeonato_brasileiro/data/http/http.dart';
import 'package:campeonato_brasileiro/data/models/remote_championship_model.dart';
import 'package:campeonato_brasileiro/data/models/tabela_model.dart';
import 'package:campeonato_brasileiro/data/models/team_model.dart';
import 'package:campeonato_brasileiro/domain/entities/championship_entities.dart';
import 'package:campeonato_brasileiro/domain/entities/tabela_entity.dart';
import 'package:campeonato_brasileiro/domain/helpers/domain_error.dart';
import 'package:campeonato_brasileiro/domain/usecases/get_teams.dart';

class RequestTeams implements GetTeams{

    final HttpClient httpClient;
    final String url;


  RequestTeams({required this.httpClient, required this.url});

  Future<TabelaEntity> requestTeams()async{
    
  try {
      print('Opaaa');

      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        headers:  {
          HttpHeaders.authorizationHeader:
              "Bearer live_acb2b893f7e58327ce7a5e6de826ee"
        }
        
      );    
      //print(' Entrou aqui ${httpResponse.body}'); 

    final List<Map> teamList = (httpResponse as List).map((item) => item as Map).toList();
    return RemoteTabelaModel.fromJson(teamList).toEntity();

  } on HttpError catch(error){
     throw error == HttpError.unauthorized
          ? DomainError.acessDenied
          : DomainError.unexpected;
  }

}
}