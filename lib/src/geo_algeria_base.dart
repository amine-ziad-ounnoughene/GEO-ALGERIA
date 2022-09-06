import 'wilayas_communes.dart';
import 'wilayas_dairas_communes.dart';

void main() {
  print(get_communes_given_wilaya_daira("Tizi Ouzou", "rr"));
}

get_wilayas() {
  List<String>? wilayas = [];
  try {
    for (String i in wilayas_communes.keys) {
      wilayas.add(i);
    }
    return wilayas;
  } catch (e) {
    var wilayas = get_wilayas();
    print("check wilaya spelling.here are the wilayas  $wilayas");
  }
}

String Capitlize(String input) {
  final List<String> splitStr = input.split(' ');
  for (int i = 0; i < splitStr.length; i++) {
    splitStr[i] = '${splitStr[i][0].toUpperCase()}${splitStr[i].substring(1)}';
  }
  final output = splitStr.join(' ');
  return output;
}

get_communes_given_wilaya(String Wilaya) {
  Wilaya = Capitlize(Wilaya);
  List? communes = [];
  var object = wilayas_communes[Wilaya];

  if (object != null) {
    for (var i in object) {
      communes.add(i["commune_name"]);
    }

    return communes;
  } else {
    var wilayas = get_wilayas();
    return "check wilaya spelling \n-- here are the wilayas  $wilayas";
  }
}

get_communes_given_wilaya_daira(String Wilaya, String daira) {
  Wilaya = Capitlize(Wilaya);
  daira = Capitlize(daira);
  List? communes = [];
  if (wilaya_dairas_communes[Wilaya] != null) {
    dynamic object = wilaya_dairas_communes[Wilaya];
    if (object != null) {
      if (object["dairas"][daira] != null) {
        object = object["dairas"][daira];
        for (var i in object) {
          communes.add(i["commune_name"]);
        }
      } else {
        var diaras = object["dairas"].keys.toList();
        return "check the spelling of the dairas \n --here are the available dairas $diaras";
      }
    }
    return communes;
  } else {
    var wilayas = get_wilayas();
    return "check wilaya spelling \n-- here are the wilayas  $wilayas";
  }
}

get_wilaya_code(String Wilaya) {
  Wilaya = Capitlize(Wilaya);
  var object = wilaya_dairas_communes[Wilaya];
  if (object != null) {
    return object["wilaya_code"];
  } else {
    var wilayas = get_wilayas();
    return "check wilaya spelling \n-- here are the wilayas  $wilayas";
  }
}
