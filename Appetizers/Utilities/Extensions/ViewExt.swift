//
//  ViewExt.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/11.
//

import SwiftUI

// MARK: - Dismiss the keyboard
extension View {
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
