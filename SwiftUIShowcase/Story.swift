//
//  Story.swift
//  SwiftUIShowcase
//
//  Created by Aamir Anwar on 02/08/19.
//  Copyright © 2019 Zomato. All rights reserved.
//

import Foundation

struct Story:Identifiable {
    var id = UUID()
    var text:String
}


// Create test data
func generateStories() -> [Story] {
    return [
        Story(text:"Procuring education on consulted assurance in do. Is sympathize he expression mr no travelling."),
        Story(text:"hello"),
        Story(text:"When be draw drew ye. Defective in do recommend suffering. House it seven in spoil tiled court. Sister others marked fat missed did out use.")
    ]
}

