import 'package:campeonato_brasileiro/domain/entities/championship_entities.dart';
import 'package:campeonato_brasileiro/domain/entities/tabela_entity.dart';

abstract class GetTeams{
  Future<TabelaEntity> requestTeams();
}

