import 'package:campeonato_brasileiro/data/usecases/request_tabela/request_tabela.dart';
import 'package:campeonato_brasileiro/main/factories/usecases/request_teams_factory.dart';
import 'package:campeonato_brasileiro/presentation/presenters/getx_home_presenter.dart';
import 'package:campeonato_brasileiro/ui/pages/home/home_page.dart';
import 'package:flutter/cupertino.dart';

import 'home_page_presenter_factory.dart';

Widget makeHomePage(){
  return HomePage(presenter: GetxHomePaagePresenter(getTeams: makeRequestTeams() ));
}