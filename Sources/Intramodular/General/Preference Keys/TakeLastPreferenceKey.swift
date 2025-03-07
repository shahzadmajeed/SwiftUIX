//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

public struct TakeLastPreferenceKey<T>: PreferenceKey {
    public typealias Value = T?
    
    public static var defaultValue: Value {
        return nil
    }
    
    public static func reduce(value: inout Value, nextValue: () -> Value) {
        value = nextValue()
    }
}
