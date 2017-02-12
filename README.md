# react-native-flanimatedimage
FLAnimatedImage for React Native

This module is modified from https://github.com/browniefed/react-native-flanimatedimage with the following changes: 
* use _Carthage_ or _CocoaPods_ for FLAnimatedImage dependency
* async image loading
* return the image size `onLoadEnd`

## Install

**You have to install [FLAnimatedImage](https://github.com/Flipboard/FLAnimatedImage) first** via _Carthage_ or If you're using CocoaPods, you can put the following in your Podfile:

```
pod 'FLAnimatedImage'
```

then

```shell
npm install react-native-flanimatedimage --save
```

If you are using react-native@0.40 or below
```shell
npm install react-native-flanimatedimage@0.0.3 --save
```

## Link

In XCode, in the project navigator:
- Right click _Libraries_
- Add Files to _[your project's name]_
- Go to `node_modules/react-native-flanimatedimage/RNFLAnimatedImage`
- Add the `.xcodeproj` file

In XCode, in the project navigator, select your project.
- Add the `libRNFLAnimatedImage.a` from the _deviceinfo_ project to your project's _Build Phases ➜ Link Binary With Libraries_

**If your `Catrhage`/`Pods` folder is not under `ios` folder, please modify the `Headers Search Paths` in `Build Settings - Search Paths - Header Search Paths`**
- Click `.xcodeproj` file you added before in the project navigator and go the _Build Settings_ tab. Make sure _All_ is toggled on (instead of _Basic_).
- Look for _Header Search Paths_ and add the path where the `FLAnimatedImage`'s header files are placed. 

## Usage

```js
import FLAnimatedImage from 'react-native-flanimatedimage';

...
  onLoadEnd = (e) => {
    if (!e.nativeEvent.size) return;
    const { width, height } = e.nativeEvent.size;
    this.setState({
      width,
      height,
    });
  }
...
  <FLAnimatedImage style={style} source={source} onLoadEnd={this.onLoadEnd} />
...
```
