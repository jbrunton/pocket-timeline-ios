//
//  Timeline.swift
//  timeline
//
//  Created by John Brunton on 11/08/2020.
//  Copyright © 2020 com.pocketlearningapps. All rights reserved.
//

import Foundation

struct Timeline: Decodable, Identifiable {
    public var id: Int
    public var title: String
    public var description: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case description = "description"
    }
}

