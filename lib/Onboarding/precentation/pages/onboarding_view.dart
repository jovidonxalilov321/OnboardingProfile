import 'package:flutter/material.dart';
import 'package:uygavazifa301/Onboarding/data/model/Onboarding_detail_model.dart';
import 'package:uygavazifa301/Onboarding/data/model/onboarding_model.dart';
import '../../data/repository/onboarding_repository.dart';

class OnboardingViewModel extends ChangeNotifier {
  OnboardingViewModel({required OnboardingRepository repo}) : _repo = repo {
    load();
  }

  final OnboardingRepository _repo;

  List<OnboardingModel>? myProfile = [];

  Future load() async {
    print("nimadir");
    myProfile = await _repo.fetchMyProfile();
    print(myProfile.toString());
    notifyListeners();
  }
}