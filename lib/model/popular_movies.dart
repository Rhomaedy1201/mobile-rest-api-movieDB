class PopularMovies {
  late int page;
  late int totalResults;
  late int totalPages;
  late List<Results> results;

  PopularMovies(
      {required this.page,
      required this.totalPages,
      required this.totalResults,
      required this.results});

  PopularMovies.fromJson(Map<String, dynamic> json) {
    page = json["page"];
    totalResults = json["total_result"];
    totalPages = json["total_pages"];
    if (json['result'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['total_results'] = this.totalResults;
    data['total_pages'] = this.totalResults;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  late double popularity;
  late int voteCount;
  late bool video;
  late String posterPath;
  late int id;
  late bool adult;
  late String backdropPath;
  late String originalLanguage;
  late String originalTitle;
  late List<int> genreIds;
  late String title;
  late double voteAverage;
  late String overview;
  late String releaseDate;

  Results(
      {required this.popularity,
      required this.voteCount,
      required this.video,
      required this.posterPath,
      required this.id,
      required this.adult,
      required this.backdropPath,
      required this.originalLanguage,
      required this.originalTitle,
      required this.genreIds,
      required this.title,
      required this.voteAverage,
      required this.overview,
      required this.releaseDate});

  Results.fromJson(Map<String, dynamic> json) {
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    posterPath = json['poster_path'];
    id = json['id'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    title = json['title'];
    voteAverage = json['vote_average'].toDouble();
    overview = json['overview'];
    releaseDate = json['release_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popularity'] = this.popularity;
    data['vote_count'] = this.voteCount;
    data['video'] = this.video;
    data['poster_path'] = this.posterPath;
    data['id'] = this.id;
    data['adult'] = this.id;
    data['backdrop_path'] = this.backdropPath;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['title'] = this.title;
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release'] = this.releaseDate;
    return data;
}
}