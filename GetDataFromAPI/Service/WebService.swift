//
//  WebService.swift
//  GetDataFromAPI
//
//  Created by Ramill Ibragimov on 26.02.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import Foundation

class WebService {
    
    func getAllPosts(completion: @escaping ([Post]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
                fatalError("URL is not correct")
        }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let posts = try!
                JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
}
