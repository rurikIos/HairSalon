//
//  Router.swift
//  HairSalon
//
//  Created by Чайков Ю.И. on 08.08.2025.
//

import UIKit

final class Router {
    lazy var rootNavigationController = UINavigationController()
    
    private let rootScreen: Screen<RootViewController, RootPresenter>
    
    init() {
        let rootVC = RootViewController()
        let rootPresenter = RootPresenter(view: rootVC)
        rootScreen = Screen(view: rootVC, presenter: rootPresenter)
        
        rootNavigationController.pushViewController(rootVC, animated: false)
    }
}
