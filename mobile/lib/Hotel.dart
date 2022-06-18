class MiniHotel{
  String place;
  String url_pic;
  double rating;
  int nreview;

  MiniHotel(this.place,this.url_pic,this.rating,this.nreview);

}

class Hotel{
  String place;
  String alamat;
  String url_pic;
  double rating;
  int nreview = 0;
  late List<Comment> comments;

  Hotel(this.place,this.alamat,this.url_pic,this.rating);

  void AddComment(Comment c){
    nreview++;
    comments.add(c);
  }

  void SetComments(List<Comment> c){
    comments = c;
    nreview = c.length;
  }

}

class Comment {
  String url_pic;
  String nama;
  String comment;

  Comment(this.url_pic,this.nama,this.comment);
}