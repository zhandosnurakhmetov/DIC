//
//  LoginViewController.swift
//  DI-Example
//
//  Created by admin on 1/14/21.
//

import UIKit

final class LoginViewModel {
    private let authService: AuthService
    var didSuccessfullyLogin: (() -> Void)?

    init(authService: AuthService) {
        self.authService = authService
    }

    func auth(by password: String) {
        authService.auth(by: password)
        didSuccessfullyLogin?()
    }
}

final class LoginViewController: UIViewController {

    private let viewModel: LoginViewModel
    private let homeViewController: HomeViewController

    init(viewModel: LoginViewModel, homeViewController: HomeViewController) {
        self.viewModel = viewModel
        self.homeViewController = homeViewController
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        viewModel.didSuccessfullyLogin = { [weak self] in
            guard let self = self else { return }
            self.present(self.homeViewController, animated: true, completion: nil)
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        viewModel.auth(by: "123456")
    }
}
