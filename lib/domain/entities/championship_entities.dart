
import 'package:campeonato_brasileiro/domain/entities/team_entities.dart';
import 'package:equatable/equatable.dart';

class ChampionshipEntities extends Equatable{

  final int? posicao;
  final int? pontos;
  final TeamEntities? team;
  final int? jogos;
  final int? vitorias;
  final int?  empates;
  final int? derrotas;
  final int? golsPro;
  final int?  golsContra;
  final int?  saldoGols;
  final dynamic aproveitamento;
  final int?  variacaoPosicao;
  // final List<String?> ultimosJogos ;

    List get props =>[

      posicao,
      pontos,
      team,
      jogos,
      vitorias,
      empates,
      derrotas,
      golsPro,
      golsContra,
      saldoGols,
      aproveitamento,
      variacaoPosicao,
      // ultimosJogos


  ];

  const ChampionshipEntities(
   { 
     
  required  this.posicao, 
  required  this.pontos, 
  required this.team,
  required   this.jogos,
  required   this.vitorias, 
  required   this.empates, 
  required    this.derrotas, 
  required    this.golsPro, 
  required    this.golsContra,
  required    this.saldoGols,
  required     this.aproveitamento,
  required     this.variacaoPosicao,
  // required     this.ultimosJogos
  }
    );

}

