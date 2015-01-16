## Zawgyi To Unicode Converter Mac App

![app icon](./appicon_128.png)

Allow to convert between Zawgyi And Unicode. It's using [Parabaik](https://github.com/ngwestar/parabaik).

### Download

You can download Mac app at [Release](https://github.com/saturngod/Unicode-Zawgyi-Converter/releases).

### Requirement

- Mac OS X 10.9 or later

### iOS

If you want to use Parabaik in the iOS app, just drag and drop **parabaik** folder to your project.

Add the 

- JavaScriptCore.framework

#### Usages

```
#import "parabaik.h"
```

For Zawgyi To Unicode

```
[parabaik zawgyiToUni:@"ျမန္မာစာ"];
```

For Unicode To Zawgyi

```
[parabaik uniToZawgyi:@"မြန်မာစာ"];
```