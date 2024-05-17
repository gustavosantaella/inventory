import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/lang.dart';

class POSInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? errorText;
  final String? label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? suffixIconOnPressed;
  final bool? obscureText;

  const POSInput({
    super.key,
    this.controller,
    this.errorText,
    this.label,
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconOnPressed,
  });

  @override
  State<StatefulWidget> createState() => _InputState();
}

class _InputState extends State<POSInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText ?? false,
      decoration: InputDecoration(
          suffixIcon: widget.suffixIcon != null
              ? IconButton(
                  onPressed: widget.suffixIconOnPressed,
                  icon: Icon(widget.suffixIcon))
              : null,
          prefixIcon:
              widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          errorText: widget.errorText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: ConstApp.colors().grey1,
                width: 1.0,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: ConstApp.colors().blue,
            ),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          labelText: widget.label ?? lang("Write something..."),
          fillColor: ConstApp.colors().grey1,
          filled: true),
      controller: widget.controller,
    );
  }
}
