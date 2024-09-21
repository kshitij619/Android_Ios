import 'dart:io';

void main() {
  var anime1 = Anime('Naruto Series',
      ['Action', 'Adventure', 'Comedy', 'Martial Arts'], 'Series', 'Manga',
      startYear: 2002, episodes: 720, yourRating: 9);
  var anime2 = Anime(
      'Attack on Titan', ['Action', 'Drama', 'War'], 'Series', 'Manga',
      startYear: 2013, episodes: 75, yourRating: 9);
  var anime3 = Anime('One Piece', ['Action', 'Comedy', 'Adventure', 'Fantasy'],
      'Series', 'Manga',
      startYear: 1999, episodes: 1119, yourRating: 10);
  anime1.showDetails();
  anime2.showDetails();
  anime3.showDetails();
}

class Anime {
  String name;
  int? startYear;
  int? episodes;
  List<String> genre;
  int? yourRating;
  String source;
  String type;

  // Anime(String this.name, List<String> this.genre, String this.type,
  //     String this.source,
  //     {int this.startYear, int this.episodes, int this.yourRating});

  Anime(this.name, this.genre, this.type, this.source,
      {this.startYear, this.episodes, this.yourRating});

  void showDetails() {
    print("Name: $name");
    print("Start Year: $startYear");
    stdout.write("Genre: ");
    for (final gen in genre) {
      stdout.write("$gen ");
    }
    print("");
    print("Number of Episodes: $episodes");
    print("Your Rating: $yourRating");
    print("$type");
    print("Source: $source");
    print("");
  }
}

// class FavoriteAnime extends Anime {
//   static final FavoriteAnime _instance = FavoriteAnime._internal();

//   factory FavoriteAnime() {
//     return _instance;
//   }
//   FavoriteAnime._internal();
// }
