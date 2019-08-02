//
//  ContentView.swift
//  SwiftUIShowcase
//
//  Created by Aamir Anwar on 02/08/19.
//  Copyright © 2019 Zomato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Feed()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
