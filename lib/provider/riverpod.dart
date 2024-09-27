import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskify/provider/ui_provider.dart';

final showProvider = ChangeNotifierProvider<UiProvider>((ref) {
  return UiProvider();
});
