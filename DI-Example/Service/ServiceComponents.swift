//
//  ServiceComponents.swift
//  DI-Example
//
//  Created by admin on 1/14/21.
//

import Foundation

protocol ServiceComponents {
    func makeAuthService() -> AuthService
    func makePostService() -> PostService
}

final class AppServiceComponents: ServiceComponents {
    func makeAuthService() -> AuthService {
        let service = AuthServiceImpl()
        return service
    }

    func makePostService() -> PostService {
        let service = PostServiceImpl()
        return service
    }
}
