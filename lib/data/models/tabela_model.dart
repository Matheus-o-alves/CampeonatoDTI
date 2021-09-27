// class TabelaModel {
//   int? posicao;
//   int? pontos;
//   Time? time;
//   int? jogos;
//   int? vitorias;
//   int? empates;
//   int? derrotas;
//   int? golsPro;
//   int? golsContra;
//   int? saldoGols;
//   int? aproveitamento;
//   int? variacaoPosicao;
//   List<String>? ultimosJogos;

//   TabelaModel(
      
//       {
//        required this.posicao,
//      required this.pontos,
//     required  this.time,
//     required  this.jogos,
//    required   this.vitorias,
//    required   this.empates,
//   required    this.derrotas,
//    required   this.golsPro,
//   required    this.golsContra,
//   required    this.saldoGols,
//   required    this.aproveitamento,
//   required    this.variacaoPosicao,
//   required    this.ultimosJogos});

//   TabelaModel.fromJson(Map<String, dynamic> json) {
//     posicao = json['posicao'];
//     pontos = json['pontos'];
//     time =  Time.fromJson(json['time']);
//     jogos = json['jogos'];
//     vitorias = json['vitorias'];
//     empates = json['empates'];
//     derrotas = json['derrotas'];
//     golsPro = json['gols_pro'];
//     golsContra = json['gols_contra'];
//     saldoGols = json['saldo_gols'];
//     aproveitamento = json['aproveitamento'];
//     variacaoPosicao = json['variacao_posicao'];
//     ultimosJogos = json['ultimos_jogos'].cast<String>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['posicao'] = this.posicao;
//     data['pontos'] = this.pontos;
   
//       data['time'] = this.time!.toJson();
    
//     data['jogos'] = this.jogos;
//     data['vitorias'] = this.vitorias;
//     data['empates'] = this.empates;
//     data['derrotas'] = this.derrotas;
//     data['gols_pro'] = this.golsPro;
//     data['gols_contra'] = this.golsContra;
//     data['saldo_gols'] = this.saldoGols;
//     data['aproveitamento'] = this.aproveitamento;
//     data['variacao_posicao'] = this.variacaoPosicao;
//     data['ultimos_jogos'] = this.ultimosJogos;
//     return data;
//   }
// }

// class Time {
//   int? timeId;
//   String? nomePopular;
//   String? sigla;
//   String? escudo;

//   Time({required this.timeId,required this.nomePopular,required this.sigla,required this.escudo});

//   Time.fromJson(Map<String, dynamic> json) {
//     timeId = json['time_id'];
//     nomePopular = json['nome_popular'];
//     sigla = json['sigla'];
//     escudo = json['escudo'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['time_id'] = this.timeId;
//     data['nome_popular'] = this.nomePopular;
//     data['sigla'] = this.sigla;
//     data['escudo'] = this.escudo;
//     return data;
//   }
// }


import 'dart:convert';

import 'package:campeonato_brasileiro/domain/entities/tabela_entity.dart';

import 'remote_championship_model.dart';

class RemoteTabelaModel{

  List<RemoteChampionshipModel> tabela;

  RemoteTabelaModel(this.tabela);

  factory RemoteTabelaModel.fromJson(List<Map> json){
    return RemoteTabelaModel(
      json.map<RemoteChampionshipModel>((tabela) => RemoteChampionshipModel.fromJson(tabela)).toList(),
    );
  }


  TabelaEntity toEntity() => TabelaEntity(tabela.map((tabela) => tabela.toEntity()).toList());

  List<Map>? toJson(){

    final List<Map> jsonTabela =[];
    for(int i =0; i <tabela.length; i++ ){
      final Map tabelaJson = {
        "posicao": tabela[i].posicao,
        "pontos": tabela[i].pontos,
        // "time": {
        //   "time_id": tabela[i].team?.timeId,
        //   "nome_popular": tabela[i].team?.nomePopular,
        //   "sigla": tabela[i].team?.sigla,
        //   "escudo": tabela[i].team?.escudo
        // },
         "jogos": tabela[i].jogos,
          "vitorias": tabela[i].vitorias,
          "empates": tabela[i].empates,
          "derrotas": tabela[i].derrotas,
          "gols_pro": tabela[i].golsPro,
          "gols_contra": tabela[i].golsContra,
           "saldo_gols": tabela[i].saldoGols,
            "aproveitamento": tabela[i].aproveitamento,
            "variacao_posicao": tabela[i].variacaoPosicao,
            "ultimos_jogos":[],
      };
      jsonTabela.add(tabelaJson);

      return jsonTabela;
    }
  }

}