# CellRebel iOS SDK

## Installation

### Swift Package Manager (SPM)

To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter repository URL: https://github.com/cellrebel/CellRebelSDK-iOS 
You can also navigate to your target’s General pane, and in the “Frameworks, Libraries, and Embedded Content” section, click the + button, select Add Other, and choose Add Package Dependency.

### CocoaPods

Use the following entry in your Podfile:
```rb
pod 'CellRebelSDK', :git => 'https://github.com/cellrebel/CellRebelSDK-iOS.git', :tag => '1.6.0'
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

## GPS truncation

Since 1.6.0, you can reduce the precision of the location the SDK collects. While truncation is enabled, latitude and longitude are truncated toward zero to 2 decimal places (about 1 km) before they are stored or sent, and each measurement reports `isGpsTruncated = true`:
```swift
cellrebel.isGPSTruncationEnabled = true
```
Truncation is disabled by default. The setting is kept in memory only, so it resets to disabled on every app launch. Set it right after creating the `CellRebel` instance, before `startMeasuring`:
```swift
let cellrebel = CellRebel(clientKey: "CLIENT_KEY")
cellrebel.isGPSTruncationEnabled = true
cellrebel.startMeasuring()
```
The change takes effect immediately, including for a measurement that is already running: enabling it also truncates the last known location. Measurements already saved and waiting to be sent keep the precision they were captured with. Set `cellrebel.isGPSTruncationEnabled = false` to go back to full precision; it applies from the next location update, so the last known location stays truncated until then.

## Other APIs

If you need to retrieve current version of CellRebelSDK:
```swift
let cellrebelSdkVersion = cellrebel.version
```

Use `clearUserData` if you need to request the removal of user data collected (based on GDPR 'right to be forgotten'):
```swift
cellrebel.clearUserData()
```
