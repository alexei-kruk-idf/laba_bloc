class MainTile {
  MainTile(this.factorial);
  int factorial;

  factory MainTile.init() => MainTile(0);

  MainTile copy() => MainTile(factorial);
}
