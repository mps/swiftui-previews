#if canImport(SwiftUI) && canImport(Cocoa) && DEBUG

import Cocoa
import SwiftUI

struct NSViewControllerPreview<ViewController: NSViewController>: NSViewControllerRepresentable {
    
    let viewController: ViewController
    
    init(_ builder: @escaping () -> ViewController) {
        viewController = builder()
    }
    
    // MARK: - NSViewControllerRepresentable
    
    func makeNSViewController(context: Context) -> ViewController {
        return viewController
    }
    
    func updateNSViewController(_ viewController: ViewController, context: Context) {
        
    }
}

#endif

import Cocoa

#if canImport(SwiftUI) && canImport(Cocoa) && DEBUG

import Cocoa
import SwiftUI

struct NSViewPreview<View: NSView>: NSViewRepresentable {
    
    let view: View
    
    init(_ builder: @escaping () -> View) {
        view = builder()
    }
    
    // MARK: - NSViewRepresentable
    
    func makeNSView(context: Context) -> View {
        return view
    }
    
    func updateNSView(_ view: View, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}

#endif


#if canImport(SwiftUI) && canImport(UIKit) && DEBUG

import SwiftUI
import UIKit

struct UIViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let viewController: ViewController

    init(_ builder: @escaping () -> ViewController) {
        viewController = builder()
    }

    // MARK: - UIViewControllerRepresentable
    
    func makeUIViewController(context: Context) -> ViewController {
        return viewController
    }

    func updateUIViewController(_ uiViewController: ViewController, context: UIViewControllerRepresentableContext<UIViewControllerPreview<ViewController>>) {
        return
    }
}

#endif

#if canImport(SwiftUI) && canImport(UIKit) && DEBUG

import SwiftUI
import UIKit

struct UIViewPreview<View: UIView>: UIViewRepresentable {
    let view: View

    init(_ builder: @escaping () -> View) {
        view = builder()
    }

    // MARK: - UIViewRepresentable
    
    func makeUIView(context: Context) -> UIView {
        return view
    }

    func updateUIView(_ view: UIView, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}

#endif
