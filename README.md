# SimulatorCheck

[![Version](https://img.shields.io/cocoapods/v/SimulatorCheck.svg?style=flat)](http://cocoadocs.org/docsets/SimulatorCheck)
[![License](https://img.shields.io/cocoapods/l/SimulatorCheck.svg?style=flat)](http://cocoadocs.org/docsets/SimulatorCheck)
[![Platform](https://img.shields.io/cocoapods/p/SimulatorCheck.svg?style=flat)](http://cocoadocs.org/docsets/SimulatorCheck)

Is common to provide special behavior of your app is running on the Simulator, on Objective-C this was pretty simple, this is how you did it:

```objc
#if TARGET_IPHONE_SIMULATOR
    // Simulator
#else
    // Device
#endif
```

In Swift there's nothing as beautiful as that, so after [looking into StackOverflow I found this](http://stackoverflow.com/questions/24869481/detect-if-app-is-being-built-for-device-or-simulator-in-swift):

```swift
#if (arch(i386) || arch(x86_64)) && os(iOS)
    ...
#endif
```

Which works, but I hate copy pasting the same code everywhere, also `arch(i386)`?! That doesn't say anything, code should be self-explanatory and easy to understand. That's why I made a simple micro-library that helps with this.

## Usage

```swift
import SimulatorCheck

if SimulatorCheck.isSimulator {
    // Do something
}
```

## Installation

**SimulatorCheck** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SimulatorCheck'
```

## License

**SimulatorCheck** is available under the MIT license. See the LICENSE file for more info.

## Author

Elvis Nuñez, [@3lvis](https://twitter.com/3lvis)
