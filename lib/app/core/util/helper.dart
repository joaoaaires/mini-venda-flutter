import 'package:flutter/widgets.dart';

import 'size_helper.dart';

Widget spacer({
  double height: SizeHelper.PADDING_SIZE_BODY,
}) {
  return Container(
    height: height,
  );
}
