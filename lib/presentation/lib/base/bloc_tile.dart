class BlocTile {
  bool isLoading;
  dynamic data;
  BlocTile(
    this.isLoading,
    this.data,
  );

  factory BlocTile.init() => BlocTile(
        false,
        null,
      );

  BlocTile copy() => BlocTile(
        isLoading,
        data,
      );

  void updateParams(
    bool? isLoading,
    dynamic data,
  ) {
    if (isLoading != null) this.isLoading = isLoading;
    if (data != null) this.data = data;
  }
}
