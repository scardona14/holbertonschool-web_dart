List<double> convertToF(List<double> temperaturesInc) {
  return temperturesInc.map((temp * 9 / 5 + 32) * 100).round() / 100).toList();
}