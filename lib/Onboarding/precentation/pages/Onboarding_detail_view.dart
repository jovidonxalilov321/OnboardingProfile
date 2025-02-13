
import 'package:flutter/cupertino.dart';

import '../../data/model/Onboarding_detail_model.dart';
import '../../data/repository/onboarding_detail_repository.dart';
import '../../data/repository/onboarding_repository.dart';

class OnboardingDetailViewModel extends ChangeNotifier {
  OnboardingDetailViewModel({required OnboardingDetailRepository repo}) : _repo = repo {
    load();
  }

  final OnboardingDetailRepository _repo;

  List<OnboardingDetailModel>? myDetail = [];

  Future load() async {
    print("nimadir");
    myDetail = await _repo.fetchMyOnboarding();
    print(myDetail.toString());
    notifyListeners();
  }
}