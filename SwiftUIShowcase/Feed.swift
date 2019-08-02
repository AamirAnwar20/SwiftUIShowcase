//
//  Feed.swift
//  SwiftUIShowcase
//
//  Created by Aamir Anwar on 02/08/19.
//  Copyright © 2019 Zomato. All rights reserved.
//

import SwiftUI

struct Feed:View {
    @State var stories:[Story] = generateStories()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(stories, id: \.id) { story in

                        StoryRow(story:story)
                }
                .onDelete(perform: delete)
                .navigationBarTitle(Text("Instagram"))
            }
        }
    }
    
    func delete(at offsets:IndexSet) {
        if let offset = offsets.first {
            stories.remove(at: offset)
        }
    }
}



#if DEBUG
struct Feed_Preview:PreviewProvider {
    static var previews: some View {
        Group {
            Feed()
//            Feed().environment(\.colorScheme, .dark)
//            Feed().previewDevice(PreviewDevice(rawValue: "iPhone XS")).previewDisplayName("iPhone XS")
//            Feed().previewDevice(PreviewDevice(rawValue: "iPhone XS Max")).previewDisplayName("iPhone XS Max")
//            Feed().environment(\.sizeCategory, .extraExtraExtraLarge)
        }
    }
}
#endif
