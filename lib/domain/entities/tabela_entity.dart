import 'package:campeonato_brasileiro/domain/entities/championship_entities.dart';
import 'package:equatable/equatable.dart';

class TabelaEntity extends Equatable{
  final List<ChampionshipEntities> tabela;

  TabelaEntity(this.tabela);

  @override

  List get props => [tabela];
}