//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

/// A view's modal presentation style.
public enum ModalViewPresentationStyle {
    case fullScreen
    case page
    case form
    case overFullScreen
    case popover
    case automatic
    case none
}

// MARK: - Helpers-

#if os(iOS) || os(tvOS) || targetEnvironment(macCatalyst)

extension UIModalPresentationStyle {
    public init(_ style: ModalViewPresentationStyle) {
        switch style {
            case .fullScreen:
                self = .fullScreen
            case .page:
                self = .pageSheet
            case .form:
                self = .formSheet
            case .overFullScreen:
                self = .overFullScreen
            case .popover:
                self = .popover
            case .automatic:
                self = .automatic
            case .none:
                self = .none
        }
    }
}

#endif
