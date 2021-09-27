import 'package:campeonato_brasileiro/data/models/remote_championship_model.dart';
import 'package:campeonato_brasileiro/domain/entities/tabela_entity.dart';
import 'package:campeonato_brasileiro/domain/usecases/get_teams.dart';
import 'package:campeonato_brasileiro/ui/pages/home/home_presenter.dart';
import 'package:get/get.dart';

class GetxHomePaagePresenter extends GetxController implements HomePagePresenter{

  final  GetTeams getTeams;

  GetxHomePaagePresenter({ required this.getTeams});

  // Future <RemoteChampionshipModel> loadTeams() async {
  //   // final RemoteChampionshipModel request = teams;
  //   return request;
  // }
    
  Future<TabelaEntity> requestTeams() async{
     return getTeams.requestTeams();
  }


}