A Responsive Container that behaves normally in small screens, but wraps your content in a box for big screens.
Web & Mobile adaptive design.

## Features

* Easy to implement.
* Automatically adjust based on the device screen.
* Wraps your content in a box for big screens and web development.
* Responsive for mobile apps.
* Fully customizable.

## Install

```yaml
const like = 'sample';
```

```dart
const like = 'sample';
```

## Usage

```dart
ResponsiveContainer(
    child: Text("This is Awesome!!!"),
)
```

### **Customization**
```dart
ResponsiveContainer(

    // Max breakpoint width for the responsive container
    maxWidth: 600,
    // Specify a fixed height (Full Screen by default)
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
