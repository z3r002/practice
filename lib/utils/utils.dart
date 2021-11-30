import "dart:math" show pow;

String sepByComma(String org) {
  String formatted = '';

  for (var i = 0; i < org.length; i++) {
    formatted += org[i];
    if ((org.length - (i + 1)) % 3 == 0 && (i + 1) != org.length)
      formatted += ',';
  }

  return formatted;
}

String cleanResult(double result) {
  String cleaned = '';

  if (result == result.round()) {
    cleaned = result.round().toString();
    cleaned = sepByComma(cleaned);
  } else {
    cleaned = result.toStringAsFixed(4).replaceAll(RegExp(r'0+$'), '');
    List<String> splitted = cleaned.split('.');
    cleaned = sepByComma(splitted[0]) + '.' + splitted[1];
  }

  return cleaned;
}

String decimalToBinary(String dec){
  String converted = '';
  int b = 0, c = 0, d;
  int lol = int.parse(dec);

  while (lol != 0) {
    d = (lol & 1);
    b += d * (pow(10, c++).toInt());
    lol >>= 1;
  }
  converted = b.toString();

  return converted;
}

String binaryToDecimal(String bin_string) {
  String converted = '';
  var result;
  bin_string = bin_string.trim();
  if (bin_string == null || bin_string == "") {
    throw Exception("An empty value was passed to the function");
  }
  bool is_negative = bin_string[0] == "-";
  if (is_negative) bin_string = bin_string.substring(1);
  num decimal_val = 0;
  for (int i = 0; i < bin_string.length; i++) {
    if ("01".contains(bin_string[i]) == false) {
      throw Exception("Non-binary value was passed to the function");
    } else {
      decimal_val +=
          pow(2, bin_string.length - i - 1) * int.parse((bin_string[i]));
    }
  }
  result = is_negative ? -1 * decimal_val : decimal_val;
  converted = result.toString();
  return converted;
}