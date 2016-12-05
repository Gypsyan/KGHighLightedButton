# KGHighLightedButton

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Cocoapods Compatible](https://img.shields.io/badge/KGHighLightedButton-Swift3-brightgreen.svg)](https://img.shields.io/badge/KGHighLightedButton-Swift3-brightgreen.svg)

`KGHighLightedButton` is a highlighted custom UIButton.

# Installation

## Cocoapods

Install Cocoapods if need be.

```bash
$ gem install cocoapods
```

Add `KGHighLightedButton` in your `Podfile`.

```
use_frameworks!

pod 'KGHighLightedButton'
```

Then, run the following command.

```
$ pod install
```
## Carthage

Install Carthage if need be.

```
$ brew update
$ brew install carthage
```

Add `KGHighLightedButton` in your `Cartfile`.

```
github "Gypsyan/KGHighLightedButton"
```

Run `carthage` to build the framework and drag the built `KGHighLightedButton.framework` into your Xcode project.

# Usage

Add a button to your Interface builder and set the class name as `KGHighLightedButton` in the `identity inspector`. Provide the module name as `KGHighLightedButton`.

Come to the `attribute inspector` and add the feature,

  * Fore Ground Color
  * Shadows Color
  * Shadows height
  * depth
  * Corner radius

# License

Copyright 2016 Ananth.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
