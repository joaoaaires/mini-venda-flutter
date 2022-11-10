import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final Function(String?)? onSaved;
  final bool enable;
  final bool enableInteractiveSelection;
  final bool obscureText;
  final bool toggleObscureText;
  final bool isRequired;
  final bool autocorrect;
  final int maxLines;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final List<TextInputFormatter> inputFormatters;
  final List<String Function(String)>? validators;
  final Widget? prefixIcon;

  const TextFormFieldCustom({
    Key? key,
    this.labelText,
    this.hintText,
    this.initialValue,
    this.onSaved,
    this.obscureText = false,
    this.toggleObscureText = false,
    this.isRequired = false,
    this.autocorrect = false,
    this.maxLines: 1,
    this.enable = true,
    this.enableInteractiveSelection = true,
    this.keyboardType = TextInputType.text,
    this.inputFormatters = const <TextInputFormatter>[],
    this.validators,
    this.controller,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorPrimary = Theme.of(context).primaryColor;
    // final border = UnderlineInputBorder(
    //   borderRadius: BorderRadius.circular(10),
    //   borderSide: BorderSide(color: colorPrimary, width: 1.0),
    // );
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: colorPrimary),
    );
    return TextFormField(
      scrollPadding: const EdgeInsets.symmetric(horizontal: 10),
      onSaved: onSaved,
      initialValue: initialValue,
      enableInteractiveSelection: enableInteractiveSelection,
      //obscureText: toggleObscureText ? _showText : obscureText,
      obscureText: obscureText,
      autocorrect: autocorrect,
      enabled: enable,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        border: border,
        focusedBorder: border,
        enabledBorder: border,
        errorBorder: border,
        disabledBorder: border,
        hintMaxLines: maxLines,
        fillColor: const Color(0xffF5F6FA),
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        // suffixIcon: buildTogglePasswordButton(),
      ),
      validator: (value) {
        // if (isRequired && value?.isEmpty ?? true) {
        //   return "Este campo é obrigatorio";
        // }

        // if (validators == null) return null;
        // if (validators.length == 0) return null;

        // for (var i = 0; i < validators.length; i++) {
        //   if (validators[i] != null && validators[i](value) != null) {
        //     return validators[i](value);
        //   }
        // }

        return null;
      },
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      controller: controller,
    );
  }
}
