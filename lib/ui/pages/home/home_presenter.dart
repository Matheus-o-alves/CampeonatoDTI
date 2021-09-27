import 'package:campeonato_brasileiro/domain/entities/tabela_entity.dart';

abstract class HomePagePresenter{

  Future<TabelaEntity> requestTeams();


}