class OnBoardingModel{
  String? image;
  String? title;
  String? desc;

  OnBoardingModel({
    this.image,this.title,this.desc,
});

  OnBoardingModel.fromJson(dynamic json) {
    image = json['image'];
    title = json['title'];
    desc = json['description'];
  }

  Map<String, dynamic> toJson(){
    final map = <String, dynamic>{};
    map['image'] = image;
    map['title'] = title;
    map['description'] = desc;
    return map;
  }
}