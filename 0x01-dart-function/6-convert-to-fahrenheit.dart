List<double> convertToF(List<double> temperaturesInc) {
  return temperaturesInc.map((temp) => ((temp * 9 / 5 + 32) * 100).round() / 100).toList();
}