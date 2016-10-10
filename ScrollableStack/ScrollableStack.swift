//
//  ScrollableStackViewController.swift
//  ScrollableStack
//
//  Created by P D Leonard on 10/10/16.
//  Copyright © 2016 MacMeDan. All rights reserved.
//

import UIKit

protocol ScrollableStack {
    var scrollView: UIScrollView { get set }
    var contentStackView: UIStackView { get set }
    
    func prepareScrollView()
    func prepareContentStackView()
}

extension ScrollableStack where Self: UIViewController {
    
    func prepareScrollView() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

    }
    
    func prepareContentStackView() {
        contentStackView.axis = .vertical
        contentStackView.spacing = 10
        contentStackView.distribution = .fill
        scrollView.addSubview(contentStackView)
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        contentStackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentStackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        contentStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    }
}

