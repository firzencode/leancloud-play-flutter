class PlayError extends Error {
  int code;
  String detail;

  PlayError({
    required this.code,
    required this.detail,
  });

  @override
  String toString() {
    return 'PlayError: $code - $detail';
  }
}
