import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:pokemon/app/domain/enties/enties.dart';

import '../domain/usecases/get_detail.dart';
import '../ui/pages/details/detail_presenter.dart';

class ValueNotifierDetailPresenter implements DetailPresenter {
  @override
  GetDetail getDetail;

  @override
  ValueNotifier<DetailEntity> detail =
      ValueNotifier(const DetailEntity.empty());

  ValueNotifierDetailPresenter({required this.getDetail});

  @override
  void dispose() {
    detail.dispose();
  }

  @override
  void init() {
    detail = ValueNotifier(const DetailEntity.empty());
  }

  @override
  Future<void> loadDetail({required String pokemonId}) async {
    detail.value = await getDetail(pokemonId: pokemonId);
  }
}
