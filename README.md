# CellRebel iOS SDK

## Installation

### Swift Package Manager (SPM)

To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter repository URL: https://github.com/cellrebel/CellRebelSDK-iOS 
You can also navigate to your target’s General pane, and in the “Frameworks, Libraries, and Embedded Content” section, click the + button, select Add Other, and choose Add Package Dependency.

### CocoaPods

Use the following entry in your Podfile:
```rb
pod 'CellRebelSDK', '~> 1.3.0'
```

Then run `pod install`.

## Usage

Import CellRebelSDK:
```swift
import CellRebelSDK
```

Initialize SDK using your unique CLIENT_KEY string:
```swift
let cellrebel = CellRebel(clientKey: "CLIENT_KEY")
```

Use `startMeasuring` to start measurement:
```swift
cellrebel.startMeasuring()
```

In some (rare) cases, if very high load tasks need to be performed, `stopMeasuring` can be used to abort an ongoing measurement sequence:
```swift
cellrebel.stopMeasuring();
```

If you need to retrieve current version of CellRebelSDK:
```swift
let cellrebelSdkVersion = cellrebel.version
```

Use `clearUserData` if you need to request the removal of user data collected (based on GDPR 'right to be forgotten'):
```java
cellrebel.clearUserData()
```
