class TextFormFieldModel {
  final bool isPass;
  final String hintText;
  final bool suffixIconStatus;
  const TextFormFieldModel(
      {required this.hintText,
      this.isPass = false,
      this.suffixIconStatus = false});
}
