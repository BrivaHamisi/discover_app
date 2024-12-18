class Article {
  final String title;
  final String image;
  final String location;
  final String author;
  final int likes;
  final int comments;
  final int shares;
  bool isLiked = false;

  Article(this.title, this.image, this.comments, this.likes, this.isLiked,
      this.location, this.shares, this.author);
}

List<Article> articles = [
  Article(
      'Japan\'s second largest metropolitan area',
      'https://c4.wallpaperflare.com/wallpaper/653/194/366/samurai-japan-japanese-digital-art-artwork-hd-wallpaper-preview.jpg',
      100,
      32000,
      true,
      'Osaka Japan',
      50,
      'Hussain Mustafa'),
  Article(
      'Known as the sleepless town for obvious reasons',
      'https://c4.wallpaperflare.com/wallpaper/885/751/661/rain-artwork-women-earring-wallpaper-preview.jpg',
      300,
      50000,
      true,
      'Kabuikicho Japan',
      1250,
      'Tim Salvatore'),
  Article(
      'Japan\'s second largest metropolitan area',
      'https://c4.wallpaperflare.com/wallpaper/952/824/961/makoto-shinkai-kimi-no-na-wa-wallpaper-preview.jpg',
      200,
      10000,
      true,
      'Tokyo Japan',
      1000,
      'Ely Marya'),
];
