//
//  Mods.swift
//  SwiftUIShowcase
//
//  Created by Aamir Anwar on 02/08/19.
//  Copyright © 2019 Zomato. All rights reserved.
//

import SwiftUI

struct PrimaryLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
    }
}
