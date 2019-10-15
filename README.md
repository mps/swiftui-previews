# 🧐 SwiftUI Previews 🧐

This package will allow you to easily incorporate SwiftUI Previews into your native UIKit & AppKit projects.  Inspired by the NSHipster article found here: https://nshipster.com/swiftui-previews/

## Usage:

Consider a subclass of `UIButton`
that draws a border around itself:

```swift
final class BorderedButton: UIButton {
    var cornerRadius: CGFloat { <#...#> }
    var borderWidth: CGFloat { <#...#> }
    var borderColor: UIColor? { <#...#> }
}
```

```swift
#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13.0, *)
struct BorderedButton_Preview: PreviewProvider {
  static var previews: some View {
    UIViewPreview {
      let button = BorderedButton(frame: .zero)
      button.setTitle("Follow", for: .normal)
      button.tintColor = .systemOrange
      button.setTitleColor(.systemOrange, for: .normal)
      return button
    }.previewLayout(.sizeThatFits)
     .padding(10)
  }
}
#endif
```

## Snippets NSView & NSViewController

```swift
#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct <#NSView#>Preview: PreviewProvider {
    
    static var previews: some View {
        NSViewPreview {
            <#Code#>
        }
    }
    
}

#endif
```

```swift
#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct <#NSViewController#>Preview: PreviewProvider {
    
    static var previews: some View {
        NSViewControllerPreview {
            <#Code#>
        }
    }
    
}

#endif
```

## Snippets UIView & UIViewController

```swift
#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct <#UIiew#>Preview: PreviewProvider {
    
    static var previews: some View {
        UIViewPreview {
            <#Code#>
        }
    }
    
}

#endif
```

```swift
#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct <#UIViewController#>Preview: PreviewProvider {
    
    static var previews: some View {
        UIViewControllerPreview {
            <#Code#>
        }
    }
    
}

#endif
```

## Requirements

- iOS 11+ / macOS 10.15+
- Xcode 11.0+
- Swift 5.1+

## Installation

**🧐 SwiftUI Previews 🧐** is meant to be installed using the [Swift Package Manager](https://github.com/apple/swift-package-manager). To install it, simply
declare it as a dependency in your `Package.swift`:

```swift
.package(url: "https://github.com/cfacorp/swiftui-previews")
```

*For more information, see [the Swift Package Manager documentation](https://github.com/apple/swift-package-manager/tree/master/Documentation).*
