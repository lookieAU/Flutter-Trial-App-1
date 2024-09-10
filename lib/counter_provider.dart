import "package:flutter_riverpod/flutter_riverpod.dart";

final counterProvider = StateProvider<int>((ref) => 0);
final nameProvider = StateProvider<String>((ref) => "");
