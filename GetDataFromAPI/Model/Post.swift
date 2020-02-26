//
//  Post.swift
//  GetDataFromAPI
//
//  Created by Ramill Ibragimov on 26.02.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import Foundation

struct Post: Identifiable, Hashable, Encodable, Decodable {
    
    let id: Int
    let title: String
    let body: String
}
