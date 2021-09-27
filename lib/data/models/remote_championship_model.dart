import 'package:campeonato_brasileiro/data/http/http.dart';
import 'package:campeonato_brasileiro/data/models/team_model.dart';
import 'package:campeonato_brasileiro/domain/entities/championship_entities.dart';
import 'package:campeonato_brasileiro/domain/entities/team_entities.dart';

class RemoteChampionshipModel{
  final int posicao;
  final int pontos;
  final TeamModel? team;
  final int jogos;
  final int vitorias;
  final int  empates;
  final int derrotas;
  final int golsPro;
  final int  golsContra;
  final int  saldoGols;
  final dynamic  aproveitamento;
  final int  variacaoPosicao;
  // final List<String> ultimosJogos ;

  RemoteChampionshipModel(
   {  
      required this.posicao,
      required this.pontos,
      required this.team, 
      required this.jogos, 
      required this.vitorias, 
      required this.empates, 
      required this.derrotas, 
      required this.golsPro, 
      required this.golsContra, 
      required this.saldoGols, 
      required this.aproveitamento, 
      required this.variacaoPosicao, 
      // required this.ultimosJogos
      }
    );
  

 factory RemoteChampionshipModel.fromJson(Map json ){

     if (!json.keys.toSet().containsAll(  ['posicao', 'pontos', 
     
     'time',
     
      'jogos',  "vitorias","empates",
      "derrotas", "gols_pro", "gols_contra", "saldo_gols", "aproveitamento",  "variacao_posicao",
      
        // "ultimos_jogos"
     
      ] )){

                throw HttpError.invalidData;
      }

        return RemoteChampionshipModel( 
            posicao: json['posicao'] as int,
            pontos: json['pontos'] as int,
            team:  json['time'] != null ?  TeamModel.fromJson(json['time'] as Map) : null ,
            jogos: json['jogos'] as int,
            vitorias: json['vitorias'] as int,
            empates: json['empates'] as int,
            derrotas: json['derrotas'] as int,
            golsPro:json['gols_pro'] as int,
            golsContra: json['gols_contra'] as int,
            saldoGols: json['saldo_gols'] as int,
            aproveitamento: json['aproveitamento'] as dynamic ,
            variacaoPosicao: json['variacao_posicao'] as int,
            // ultimosJogos:json['ultimos_jogos'] 
          
        );
      }

      ChampionshipEntities toEntity() => ChampionshipEntities(
        posicao: posicao,
        pontos: pontos,
        team: team?.toEntity(),
        jogos:jogos,
        vitorias:vitorias,
        empates:empates,
        derrotas:derrotas,
        golsPro: golsPro,
        golsContra: golsContra,
        saldoGols: saldoGols,
        aproveitamento: aproveitamento,
        variacaoPosicao: variacaoPosicao,
        // ultimosJogos: ultimosJogos
      );


      Map toJson()=>{
        "posicao": posicao,
         "pontos":pontos ,
         "time": team,
         "jogos": jogos,
         "vitorias":vitorias ,
          "empates": empates,
          "derrotas": derrotas,
             "gols_pro": golsPro,
             "gols_contra": golsContra,
             "saldo_gols": saldoGols,
             "aproveitamento": aproveitamento,
             "variacao_posicao": variacaoPosicao,
            //  "ultimos_jogos": ultimosJogos

      };
 }
  
