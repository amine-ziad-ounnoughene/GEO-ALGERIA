# Algeria Geography

A dart package that helps developers working on Algerian geographical data and Algerian territorial subdivision


![Logo](https://github.com/amine-ziad-ounnoughene/Algeria-geography/blob/8b829ab5d3ccf56bf60a20c730aaa4b4d030c822/geo-banner.png)


## Guide

add the dependency into the pubspec.yaml file 

```yaml
  dependencies:
  flutter:
    sdk: flutter


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
  algeria_geography : ^1.0.0
```

start using it
```dart
  // get the 58 Algerian wilayas
  get_wilayas()
  // get communes names given wilaya name
  get_communes_given_wilaya(String wilaya)
  //get communes names in a specific daira
  get_communes_given_wilaya_daira(String Wilaya, String daira)
  // get wilaya code (matricule)
  get_wilaya_code(String Wilaya) 
  
  
  ```

you can access the two dart files I used
```bash
    |-- CHANGELOG.md
    |-- LICENSE
    |-- README.md
    |-- analysis_options.yaml
    |-- lib
    |   |-- algeria_geography.dart
    |   '-- src
    |       |-- algeria_geography_base.dart
    |       |-- wilayas_communes.dart //here is the first file
    |       '-- wilayas_dairas_communes.dart //here is the second file
    '-- pubspec.yaml
```

here is the structure of the "wilayas_communes.dart" file or "json/wilayas_communes.json"

```json
  {
  "Tizi Ouzou": [
    {
      "id": 535,
      "commune_name": "Mizrana",
      "daira_name": "Tigzirt",
      "wilaya_code": "15",
      "wilaya_name": "Tizi Ouzou"
    },
    ]
  "In Guezzam": [
    {
      "id": 363,
      "commune_name": "Tin Zouatine",
      "daira_name": "Tin Zouatine",
      "wilaya_code": "54",
      "wilaya_name": "In Guezzam"
    },
    ]
 }
  
```
here is the structure of the "wilayas_dairas_communes.dart" or "json/wilayas_dairas_communes.json"

```json
{
"Tizi Ouzou": {
    "wilaya_code": 15,
    "dairas": {
      "Tizi Ouzou": [
        {
          "id": 549,
          "commune_name": "Tizi-Ouzou",
          "daira_name": "Tizi Ouzou",
          "wilaya_code": "15",
          "wilaya_name": "Tizi Ouzou"
        }
      ],
  },
 "In Guezzam": {
    "wilaya_code": 54,
    "dairas": {
      "In Guezzam": [
        {
          "id": 356,
          "commune_name": "Ain Guezzam",
          "daira_name": "In Guezzam",
          "wilaya_code": "54",
          "wilaya_name": "In Guezzam"
        }
      ],
     "Tin Zouatine": [
        {
          "id": 363,
          "commune_name": "Tin Zouatine",
          "daira_name": "Tin Zouatine",
          "wilaya_code": "54",
          "wilaya_name": "In Guezzam"
        }
      ]
    }
  },
```
## Note
I processed the original json files using process.py and manualy
## Acknowledgements
I got the json file from here
 - [Algerian Cities](https://github.com/othmanus/algeria-cities)
 
