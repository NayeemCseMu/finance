import 'package:finance/data/model/onboard_model.dart';

import '../../presentations/utils/app_text.dart';
import '../../presentations/utils/assets_path.dart';

List<OnboardModel> onboardData = [
  OnboardModel(
      image: KAssetsPath.onbaordOne, title: kQuickText, subtitle: kLoremText),
  OnboardModel(
      image: KAssetsPath.onbaordTwo,
      title: kShoppingText,
      subtitle: kLoremText),
  OnboardModel(
      image: KAssetsPath.onbaordThree,
      title: kManageFinanceText,
      subtitle: kLoremText),
];

List<String> bankAccount = [
  KAssetsPath.circus,
  KAssetsPath.americanExp,
  KAssetsPath.bluepay,
  KAssetsPath.bb,
  KAssetsPath.paypoint,
  KAssetsPath.dinerClub,
  KAssetsPath.worldPay,
  KAssetsPath.unionPay,
  KAssetsPath.wutangClan,
];

List<String> intAccount = [
  KAssetsPath.mastercard,
  KAssetsPath.visa,
  KAssetsPath.papypal,
];
