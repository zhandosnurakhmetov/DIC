//
//  PostService.swift
//  DI-Example
//
//  Created by admin on 1/14/21.
//

import Foundation

protocol PostService {
    func fetchPosts()
}

final class PostServiceImpl: PostService {
    func fetchPosts() {
        print("fetch posts")
    }
}
