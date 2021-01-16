//
//  ViewController.swift
//  DI-Example
//
//  Created by admin on 1/14/21.
//

import UIKit

final class HomeViewModel {
    private let service: PostService

    init(service: PostService) {
        self.service = service
    }
}

class HomeViewController: UIViewController {
    private let viewModel: HomeViewModel

    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

