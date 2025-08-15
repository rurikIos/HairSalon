//
//  RootViewController.swift
//  HairSalon
//
//  Created by Чайков Ю.И. on 07.08.2025.
//

import UIKit
import PinLayout

class RootViewController: BaseViewController, RootView {
    
    private let bookButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupBookButton()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        bookButton.pin
            .center()
            .sizeToFit()
    }
    
    private func setupBookButton() {
        view.addSubview(bookButton)
        bookButton.setTitle("Записаться", for: .normal)
        bookButton.setTitleColor(.white, for: .normal)
        bookButton.backgroundColor = .black
        bookButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        bookButton.layer.cornerRadius = 10
        
        bookButton.addTarget(self, action: #selector(didTapBookButton), for: .touchUpInside)
    }
    
    @objc private func didTapBookButton() {
        print("rurikDebug: didTapBookButton")
    }


}

