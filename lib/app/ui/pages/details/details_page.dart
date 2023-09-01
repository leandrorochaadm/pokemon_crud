import 'package:flutter/material.dart';
import 'package:pokemon/app/ui/pages/details/detail_presenter.dart';

class DetailsPage extends StatefulWidget {
  final DetailPresenter presenter;
  const DetailsPage({Key? key, required this.presenter}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    widget.presenter.init();
    widget.presenter.loadDetail();
    super.initState();
  }

  @override
  void dispose() {
    // widget.presenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
