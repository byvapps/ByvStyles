# ByvStyles

[![CI Status](https://img.shields.io/travis/adrianByv/ByvStyles.svg?style=flat)](https://travis-ci.org/adrianByv/ByvStyles)
[![Version](https://img.shields.io/cocoapods/v/ByvStyles.svg?style=flat)](https://cocoapods.org/pods/ByvStyles)
[![License](https://img.shields.io/cocoapods/l/ByvStyles.svg?style=flat)](https://cocoapods.org/pods/ByvStyles)
[![Platform](https://img.shields.io/cocoapods/p/ByvStyles.svg?style=flat)](https://cocoapods.org/pods/ByvStyles)

With this library styles and colors can be defined and used after dynamically in code.
Support exported contet from Zeplin

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requeriments

Colors.json and Styles.js. Can be exported using zeplin ByvStyles extension

## Usage

### Colors
```swift
self.view.bgNamedColor("yellowText")
```

### Styles
```swift
label.styledText("<titleBoldWhite>Añade tu vehículo</titleBoldWhite>")

label2.styledText("<subtitleMessages>Hay una reparación asociada a este mantenimiento pendiente de valorar.</subtitleMessages> <subtitleMessagesBold>Obtendrás un 2% de descuento</subtitleMessagesBold> <subtitleMessages>de la factura en € bigs.</subtitleMessages>")
```

## Installation

ByvStyles is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ByvStyles'
```

## Author

adrianByv, adrian@byvapps.com

## License

ByvStyles is available under the MIT license. See the LICENSE file for more info.
