import 'package:equatable/equatable.dart';

class TeamEntities extends Equatable{
  final int? timeId;
  final String? nomePopular;
  final String? sigla;
  final String? escudo;

  TeamEntities({required this.timeId, required this.nomePopular, required this.sigla, required this.escudo});


List get props=>[
  timeId, nomePopular, sigla, escudo
];
}