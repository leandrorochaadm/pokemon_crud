import 'package:flutter/material.dart';
import 'package:pokemon/app/domain/enties/enties.dart';
import 'package:pokemon/app/ui/pages/details/detail_presenter.dart';

class DetailPage extends StatefulWidget {
  final DetailPresenter presenter;
  const DetailPage({Key? key, required this.presenter}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    widget.presenter.init();
    // widget.presenter.loadDetail();
    super.initState();
  }

  @override
  void dispose() {
    // widget.presenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonId = ModalRoute.of(context)!.settings.arguments as String;
    widget.presenter.loadDetail(pokemonId: pokemonId);
    return ValueListenableBuilder<DetailEntity>(
        valueListenable: widget.presenter.detail,
        builder: (_, detail, __) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Detalhe do ${detail.name}'),
            ),
          );
        });
  }
}
