


class UserModel {
  List<Results>? results;
   Info? info;

  UserModel({this.results,
    this.info
   });

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].map((v) {
        results!.add( Results.fromJson(v));
      });
    }
     info = json['info'] != null ?  Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
     if (this.info != null) {
       data['info'] = this.info!.toJson();
     }
    return data;
  }
}

class Results {
  String? gender;
  Name? name;
  Location? location;
  String? email;
   Login? login;
   Dob? dob;
   Dob? registered;
  String? phone;
  String? cell;
  Id? id;
   Picture? picture;
  String? nat;

  Results(
      {this.gender,
      this.name,
      this.location,
      this.email,
       this.login,
       this.dob,
       this.registered,
      this.phone,
      this.cell,
      this.id,
       this.picture,
      this.nat});

  Results.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = json['name'] != null ?  Name.fromJson(json['name']) : null;
    location = json['location'] != null
        ?  Location.fromJson(json['location'])
        : null;
    email = json['email'];
     login = json['login'] != null ?  Login.fromJson(json['login']) : null;
     dob = json['dob'] != null ?  Dob.fromJson(json['dob']) : null;
     registered = json['registered'] != null
         ?  Dob.fromJson(json['registered'])
         : null;
    phone = json['phone'];
    cell = json['cell'];
    id = json['id'] != null ?  Id.fromJson(json['id']) : null;
     picture =
         json['picture'] != null ?  Picture.fromJson(json['picture']) : null;
     nat = json['nat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['gender'] = gender;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['email'] = email;
     if (this.login != null) {
       data['login'] = this.login!.toJson();
     }
     if (this.dob != null) {
       data['dob'] = this.dob!.toJson();
     }
     if (this.registered != null) {
       data['registered'] = this.registered!.toJson();
     }
    data['phone'] = phone;
    data['cell'] = cell;
    if (id != null) {
      data['id'] = id!.toJson();
    }
     if (this.picture != null) {
       data['picture'] = this.picture!.toJson();
     }
    data['nat'] = nat;
    return data;
  }
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});

  Name.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['title'] = title;
    data['first'] = first;
    data['last'] = last;
    return data;
  }
}

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  String? postcode;
  Coordinates? coordinates;
   Timezone? timezone;

  Location(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.postcode,
      this.coordinates,
       this.timezone
      }
      );

  Location.fromJson(Map<String, dynamic> json) {
    street =
        json['street'] != null ?  Street.fromJson(json['street']) : null;
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    coordinates = json['coordinates'] != null
        ?  Coordinates.fromJson(json['coordinates'])
        : null;
     timezone = json['timezone'] != null
         ?  Timezone.fromJson(json['timezone'])
         : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (street != null) {
      data['street'] = street!.toJson();
    }
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['postcode'] = postcode;
    if (coordinates != null) {
      data['coordinates'] = coordinates!.toJson();
    }
     if (this.timezone != null) {
       data['timezone'] = this.timezone!.toJson();
     }
    return data;
  }
}

class Street {
  int? number;
  String? name;

  Street({this.number, this.name});

  Street.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['number'] = number;
    data['name'] = name;
    return data;
  }
}

class Coordinates {
  String? latitude;
  String? longitude;

  Coordinates({this.latitude, this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

 class Timezone {
   String? offset;
   String? description;

   Timezone({this.offset, this.description});

   Timezone.fromJson(Map<String, dynamic> json) {
     offset = json['offset'];
     description = json['description'];
   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data =  Map<String, dynamic>();
     data['offset'] = this.offset;
     data['description'] = this.description;
     return data;
   }
 }

 class Login {
   String? uuid;
   String? username;
   String? password;
   String? salt;
   String? md5;
   String? sha1;
   String? sha256;

   Login(
       {this.uuid,
       this.username,
       this.password,
       this.salt,
       this.md5,
       this.sha1,
       this.sha256});

   Login.fromJson(Map<String, dynamic> json) {
     uuid = json['uuid'];
     username = json['username'];
     password = json['password'];
     salt = json['salt'];
     md5 = json['md5'];
     sha1 = json['sha1'];
     sha256 = json['sha256'];
   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data =  Map<String, dynamic>();
     data['uuid'] = this.uuid;
     data['username'] = this.username;
     data['password'] = this.password;
     data['salt'] = this.salt;
     data['md5'] = this.md5;
     data['sha1'] = this.sha1;
     data['sha256'] = this.sha256;
     return data;
   }
 }

 class Dob {
   String? date;
   int? age;

   Dob({this.date, this.age});

   Dob.fromJson(Map<String, dynamic> json) {
     date = json['date'];
     age = json['age'];
   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data =  Map<String, dynamic>();
     data['date'] = this.date;
     data['age'] = this.age;
     return data;
   }
 }

class Id {
  String? name;
  String? value;

  Id({this.name, this.value});

  Id.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

 class Picture {
   String? large;
   String? medium;
   String? thumbnail;

   Picture({this.large, this.medium, this.thumbnail});

   Picture.fromJson(Map<String, dynamic> json) {
     large = json['large'];
     medium = json['medium'];
     thumbnail = json['thumbnail'];
   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data =  Map<String, dynamic>();
     data['large'] = this.large;
     data['medium'] = this.medium;
     data['thumbnail'] = this.thumbnail;
     return data;
   }
 }

 class Info {
   String? seed;
   int? results;
   int? page;
   String? version;

   Info({this.seed, this.results, this.page, this.version});

   Info.fromJson(Map<String, dynamic> json) {
     seed = json['seed'];
     results = json['results'];
     page = json['page'];
     version = json['version'];
   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data =  Map<String, dynamic>();
     data['seed'] = this.seed;
     data['results'] = this.results;
     data['page'] = this.page;
     data['version'] = this.version;
     return data;
   }
 }