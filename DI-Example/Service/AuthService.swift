//
//  AuthService.swift
//  DI-Example
//
//  Created by admin on 1/14/21.
//

import Foundation

protocol AuthService {
    func auth(by password: String)
    func logout()
}

final class AuthServiceImpl: AuthService {
    func auth(by password: String) {
        print("auth by password \(password)")
    }

    func logout() {
        print("logout")
    }
}
