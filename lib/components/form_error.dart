import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index])),
      //children: List.generate(errors.length, (index) => Text(errors[index])),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/Error.svg", height: getProportionateScreenWidth(14), width: getProportionateScreenWidth(14),),
        SizedBox(height: getProportionateScreenHeight(10),),
        Text(error),
      ],
    );
  }
}
