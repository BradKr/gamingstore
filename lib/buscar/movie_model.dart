//here we will write the movie data model class

class MovieModel {
  String? movie_title;
  int? movie_release_year;
  String? movie_poster_url;
  String? rating;
  MovieModel(this.movie_title, this.movie_release_year, this.rating,
      this.movie_poster_url);
}
