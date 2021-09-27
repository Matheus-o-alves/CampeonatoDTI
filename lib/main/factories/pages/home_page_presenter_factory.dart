import 'package:campeonato_brasileiro/data/models/remote_championship_model.dart';
import 'package:campeonato_brasileiro/domain/usecases/get_teams.dart';
import 'package:campeonato_brasileiro/main/factories/usecases/request_teams_factory.dart';
import 'package:campeonato_brasileiro/presentation/presenters/getx_home_presenter.dart';
import 'package:campeonato_brasileiro/ui/pages/home/home_presenter.dart';

HomePagePresenter makeGetxHomePagePresenter(){
  return GetxHomePaagePresenter(getTeams: makeRequestTeams() );
}