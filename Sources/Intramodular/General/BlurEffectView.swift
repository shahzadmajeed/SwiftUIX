//
// Copyright (c) Vatsal Manot
//

#if os(iOS)

import Swift
import SwiftUI
import UIKit

public struct BlurEffectView: View {
    public let style: UIBlurEffect.Style
    
    public init(style: UIBlurEffect.Style) {
        self.style = style
    }
    
    public var body: some View {
        VisualEffectView(effect: UIBlurEffect(style: style))
    }
}

#endif
