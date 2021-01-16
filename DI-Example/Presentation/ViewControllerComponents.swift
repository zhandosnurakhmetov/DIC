//
//  ViewControllerComponents.swift
//  DI-Example
//
//  Created by admin on 1/14/21.
//

import Foundation

protocol ViewControllerComponents {
    func makeLoginViewController() -> LoginViewController
    func makeHomeViewController() -> HomeViewController
}

final class AppViewControllerComponents: ViewControllerComponents {
    private let serviceComponents: ServiceComponents

    init(serviceComponents: ServiceComponents) {
        self.serviceComponents = serviceComponents
    }

    func makeLoginViewController() -> LoginViewController {
        let viewModel = LoginViewModel(authService: serviceComponents.makeAuthService())
        let viewController = LoginViewController(viewModel: viewModel, homeViewController: makeHomeViewController())
        return viewController
    }

    func makeHomeViewController() -> HomeViewController {
        let viewModel = HomeViewModel(service: serviceComponents.makePostService())
        let viewController = HomeViewController(viewModel: viewModel)
        return viewController
    }
}
