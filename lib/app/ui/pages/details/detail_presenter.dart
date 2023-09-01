import 'package:flutter/material.dart';

import '../../../domain/enties/enties.dart';
import '../../../domain/usecases/usecases.dart';
import '../../../presentation/base_presenter.dart';

abstract class DetailPresenter extends BasePresenter {
  final GetDetail getDetail;

  late ValueNotifier<DetailEntity> detail;

  DetailPresenter({required this.getDetail});

  Future<void> loadDetail();
}
