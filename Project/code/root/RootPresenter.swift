//
//  RootPresenter.swift
//  HairSalon
//
//  Created by Чайков Ю.И. on 08.08.2025.
//

protocol RootView: AnyObject {
    
}

final class RootPresenter {
    
    private weak var view: RootView?
    
    init(view: RootView) {
        self.view = view
    }
}
