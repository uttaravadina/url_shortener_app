class Url {
  final int id;
  final String shortUrl;
  final String fullUrl;
  final String pageTitle;
  final int hitCounter;
  final String status;
  final String createdAt;

  Url(
      {this.id,
      this.shortUrl,
      this.fullUrl,
      this.pageTitle,
      this.hitCounter,
      this.status,
      this.createdAt});

  static List<Url> fromJsonArray(List<dynamic> jsonArray) {
    List<Url> urls =  List<Url>();

    jsonArray.forEach((itemJson) {
      urls.add(Url.fromJson(itemJson));
    });

    return urls;
  }

  Url.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        shortUrl = json["short_url"],
        fullUrl = json["full_url"],
        pageTitle = json["page_title"],
        hitCounter = json["hit_counter"],
        status = json["status"],
        createdAt = json["created_at"];
}
