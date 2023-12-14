A Responsive Container that behaves normally in small screens, but wraps your content in a box for big screens.
Web & Mobile adaptive design.

## 🎯 Features

* Easy to implement.
* Automatically adjust based on the device screen.
* Wraps your content in a box for big screens and web development.
* Responsive for mobile apps.
* Fully customizable.

# 💾 Install

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  responsive_wrap_container: <latest version>
```

Now in your dart code you can import it
```dart
import 'package:responsive_wrap_container/responsive_wrap_container.dart';
```

# 📦 Usage

```dart
ResponsiveContainer(
    child: Text("This is Awesome!!!"),
)
```

### 🎨 **Customization**
```dart
ResponsiveContainer(

    // Max breakpoint width for the responsive container
    maxWidth: 600,
    // Specify a fixed height (Full Screen by default)
    // height can be set to Height.wrap or Height.fullScreen or a fixed value
    height: 170,
    // Force wrap container's height around content
    wrapHeight: true,
    
    // Color of the main container (box holding your content)
    colorContainer: Colors.black,
    // Color for the responsive background (appears only when screen passes the maxWidth value)
    colorBackground: Colors.blueGrey,
    
    
    child: Text("This is Awesome!!!"),
)
```


# 🧱 Parameters

| Name | Description | Data type | Default value | Required |
|:-----|-------------|-----------|---------------|----------|
| child | Your content | Widget | - | Required |
| maxWidth | Max breakpoint width for the responsive container | double | 600 | no |
| height | Specify a fixed height (Full Screen by default). height can be set to Height.wrap or Height.fullScreen or a fixed value | double | Height.fullScreen | no |
| wrapHeight | Force wrap container's height around content | bool | true | no |
| colorContainer | Color of the main container (box holding your content) | Color | white | no |
| colorBackground | Color for the responsive background (appears only when screen passes the maxWidth value) | Color | grey | no |
