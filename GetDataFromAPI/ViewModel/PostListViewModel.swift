//
//  PostListViewModel.swift
//  GetDataFromAPI
//
//  Created by Ramill Ibragimov on 26.02.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI
import Combine

final class PostListViewModel: ObservableObject {
    
    init() {
        fetchPost()
    }
    
    @Published var posts = [Post]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchPost() {
        WebService().getAllPosts {
            self.posts = $0
        }
    }
    
    let didChange = PassthroughSubject<PostListViewModel, Never>()
}
