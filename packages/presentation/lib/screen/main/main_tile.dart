class MainTile {
  MainTile(this.factorial);
  String factorial;

  factory MainTile.init() => MainTile('0');

  MainTile copy() => MainTile(factorial);
}
