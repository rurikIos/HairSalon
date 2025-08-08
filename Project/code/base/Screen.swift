//
//  Screen.swift
//  HairSalon
//
//  Created by Чайков Ю.И. on 08.08.2025.
//  Screen класс для создания связки ViewController - Presenter

import UIKit

final class Screen<View: BaseViewController, Presenter> {
    let view: View
    let presenter: Presenter
    
    init(view: View, presenter: Presenter) {
        self.view = view
        self.presenter = presenter
        
        view.retain = presenter
    }
}

class BaseViewController: UIViewController {
    fileprivate var retain: Any?
}
