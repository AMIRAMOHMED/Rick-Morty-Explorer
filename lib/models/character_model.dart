class Character {
  Character({
    required this.id,
    required this.name,
    required this.statusdeadorlife,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      statusdeadorlife: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      origin: Location.fromJson(json['origin']),
      location: Location.fromJson(json['location']),
      image: json['image'],
      episode: List<String>.from(json['episode']),
      url: json['url'],
      created: json['created'],
    );
  }

  final String created;
  final List<String> episode;
  final String gender;
  final int id;
  final String image;
  final Location location;
  final String name;
  final Location origin;
  final String species;
  final String statusdeadorlife;
  final String type;
  final String url;

  int? getEpisodeNumber(int index) {
    if (index >= 0 && index < episode.length) {
      final episodeUrl = episode[index];
      final parts = episodeUrl.split('/');
      if (parts.isNotEmpty) {
        return int.tryParse(parts.last);
      }
    }
    return null;
  }

  static String formatCreatedDate(String dateString) {
    final dateTime = DateTime.parse(dateString);
    final formattedDate = '${dateTime.day}-${dateTime.month}-${dateTime.year}';
    return formattedDate;
  }
}

class Location {
  Location({required this.name, required this.url});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      url: json['url'],
    );
  }

  final String name;
  final String url;
}
