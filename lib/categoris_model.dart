
class CategoriesModel {
  bool? error;
  String? message;
  Data? data;

  CategoriesModel({this.error, this.message, this.data});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    if(json["error"] is bool) {
      error = json["error"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["error"] = error;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  List<Item>? item;
  List<Categories>? categories;

  Data({this.item, this.categories});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["item"] is List) {
      item = json["item"] == null ? null : (json["item"] as List).map((e) => Item.fromJson(e)).toList();
    }
    if(json["categories"] is List) {
      categories = json["categories"] == null ? null : (json["categories"] as List).map((e) => Categories.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(item != null) {
      _data["item"] = item?.map((e) => e.toJson()).toList();
    }
    if(categories != null) {
      _data["categories"] = categories?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Categories {
  int? id;
  String? name;

  Categories({this.id, this.name});

  Categories.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class Item {
  int? id;
  int? faqCategroyId;
  String? questline;
  String? answer;

  Item({this.id, this.faqCategroyId, this.questline, this.answer});

  Item.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["faq_categroy_id"] is int) {
      faqCategroyId = json["faq_categroy_id"];
    }
    if(json["questline"] is String) {
      questline = json["questline"];
    }
    if(json["answer"] is String) {
      answer = json["answer"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["faq_categroy_id"] = faqCategroyId;
    _data["questline"] = questline;
    _data["answer"] = answer;
    return _data;
  }
}