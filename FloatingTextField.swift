//
//  FloatingTextField.swift
//  Molly
//
//  Created by Rami Almofleh on 01.07.21.
//

import Foundation
import SwiftUI

struct FloatingTextField: View {
    let title: String
    @Binding var text: String
    let type: String
    
    @State private var focused: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            if text.count > 0 {
                Text(LocalizedStringKey(title))
                    .font(.caption)
                    .foregroundColor(Color(.placeholderText))
            }
            
            TextField(LocalizedStringKey(title), text: $text)
            .keyboardType(type == "text" ? .namePhonePad : .phonePad)
        }
    }
}
