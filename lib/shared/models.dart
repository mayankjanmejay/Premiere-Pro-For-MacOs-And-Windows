
import 'dart:convert';


class CHeaders {
    CHeaders({
        this.image,
        this.type,
    });

    String? image;
    String? type;

    factory CHeaders.fromRawJson(String str) => CHeaders.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CHeaders.fromJson(Map<String, dynamic> json) => CHeaders(
        image: json["image"] == null ? null : json["image"],
        type: json["type"] == null ? null : json["type"],
    );

    Map<String, dynamic> toJson() => {
        "image": image == null ? null : image,
        "type": type == null ? null : type,
    };
}




class CData {
    CData({
        this.type,
        this.name,
        this.shortName,
        this.locationName,
        this.emirate,
        this.images,
    });

    String? type;
    String? name;
    String? shortName;
    String? locationName;
    String? emirate;
    List<String>? images;

    factory CData.fromRawJson(String str) => CData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CData.fromJson(Map<String, dynamic> json) => CData(
        type: json["type"] == null ? null : json["type"],
        name: json["name"] == null ? null : json["name"],
        shortName: json["short_name"] == null ? null : json["short_name"],
        locationName: json["location_name"] == null ? null : json["location_name"],
        emirate: json["emirate"] == null ? null : json["emirate"],
        images: json["images"] == null ? null : List<String>.from(json["images"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "name": name == null ? null : name,
        "short_name": shortName == null ? null : shortName,
        "location_name": locationName == null ? null : locationName,
        "emirate": emirate == null ? null : emirate,
        "images": images == null ? null : List<dynamic>.from(images!.map((x) => x)),
    };
}
