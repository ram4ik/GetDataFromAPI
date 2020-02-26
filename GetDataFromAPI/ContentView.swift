//
//  ContentView.swift
//  GetDataFromAPI
//
//  Created by Ramill Ibragimov on 26.02.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PostListViewModel()
        
    var body: some View {
        List(model.posts) { post in
            Text(post.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
