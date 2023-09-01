import 'package:flutter/material.dart';
import 'package:pokemon/app/domain/enties/enties.dart';
import 'package:pokemon/app/ui/pages/details/detail_presenter.dart';

import 'widgets/widgets.dart';

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
    super.initState();
  }

  @override
  void dispose() {
    widget.presenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final pokemonId = ModalRoute.of(context)!.settings.arguments as String;
    widget.presenter.loadDetail(pokemonId: '1');
    return ValueListenableBuilder<DetailEntity>(
        valueListenable: widget.presenter.detail,
        builder: (_, detail, __) {
          if (detail.name == '') {
            return const LoadingWidget();
          }
          return Scaffold(
            appBar: AppBar(title: Text('Detalhe do ${detail.name ?? ''}')),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ItemWidget(label: 'Name', description: detail.name),
                  const SizedBox(height: 8),
                  ItemWidget(
                      label: 'Código', description: detail.id.toString()),
                  const SizedBox(height: 8),
                  ItemWidget(
                    label: 'Altura',
                    description: detail.height.toString(),
                  ),
                  const SizedBox(height: 8),
                  ItemWidget(
                    label: 'Peso',
                    description: detail.weight.toString(),
                  ),
                  const SizedBox(height: 8),
                  ItemWidget(
                    label: 'Experiência base',
                    description: detail.baseExperience.toString(),
                  ),
                  const SizedBox(height: 8),
                  ItemWidget(
                    label: 'Ordem',
                    description: detail.order.toString(),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          );
        });
  }
}
