import 'package:campeonato_brasileiro/domain/entities/tabela_entity.dart';
import 'package:campeonato_brasileiro/presentation/presenters/getx_home_presenter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

 final GetxHomePaagePresenter presenter;

  const HomePage({Key? key,required this.presenter}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    

   void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async{
     
        await widget.presenter.requestTeams();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FutureBuilder<TabelaEntity?>(
           future: widget.presenter.requestTeams(),
            builder: (context, snapshot) {
              return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 50,
          crossAxisCount: 1,
          mainAxisSpacing: 5,
          childAspectRatio: 1,
          crossAxisSpacing: 8,
        ),
              itemCount: snapshot.data!.tabela.length,
              itemBuilder:(ctx, i) =>
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(snapshot.data!.tabela[i].team!.nomePopular.toString()),
                        Text(snapshot.data!.tabela[i].pontos.toString())
                      ],
                    ),
                  )
                ],
              )
              
              );
            }
          ),
        ),
      ),
    );
  }
}
