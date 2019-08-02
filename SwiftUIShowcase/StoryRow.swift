//
//  StoryRow.swift
//  SwiftUIShowcase
//
//  Created by Aamir Anwar on 02/08/19.
//  Copyright © 2019 Zomato. All rights reserved.
//

import SwiftUI

struct StoryImage:View {
    var body: some View {
        Image("storyimage")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .cornerRadius(12)
        .shadow(radius:3)
    }
}

struct StoryActions:View {
    var body: some View {
        HStack() {
            Image(systemName:"phone")
            Image(systemName:"book")
            Image(systemName:"cloud")
            Spacer()
            
            Text("34 items left")
                .foregroundColor(.gray)
                .font(.caption)
            
        }.padding(.bottom, 8).padding(.top, 8)
    }
}

struct StoryInfo:View {
    var body:some View {
        VStack() {
            HStack {
                Image(systemName:"video.circle.fill")
                Text("323 people saved this for later")
                    .font(.caption)
                Spacer()
            }
            
        }
    }
}

struct StoryDetail:View {
    var text:String
    var body:some View {
        
        VStack {
            HStack(alignment:.top) {
                Image(systemName:"pencil.tip").padding(.top, 2)

                Text(text)
                    .font(.caption)
                    .lineLimit(nil)

                Spacer()
            }
        }
    }
}

struct StoryRow:View {
    var story:Story    
    var body: some View {
        VStack(alignment: .center) {
            StoryImage()
            StoryActions()
            Divider()
            StoryInfo()
            Divider()
            StoryDetail(text:story.text)
        }
        .padding(.top)
        .padding(.bottom)
    }
}

#if DEBUG
struct StoryRow_Preview:PreviewProvider {
    static var previews: some View {
        Group {
            StoryRow(story: Story(text:"hello world"))
        }
    }
}
#endif
