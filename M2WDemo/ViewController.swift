//
//  ViewController.swift
//  M2WDemo
//
//  Created by TianqiWang on 2023/2/27.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var currencySymbolLabel: UILabel!
    @IBOutlet weak var currencyDescLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        currencySymbolLabel.layer.cornerRadius = currencySymbolLabel.bounds.size.height / 2.0
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if let previousTraitCollection = previousTraitCollection,
           traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            currencySymbolLabel.layer.borderColor = UIColor(named: "BrownishGrey")?.cgColor
        }
    }
}

// MARK: - Privates

extension ViewController {
    
    private func setupUI() {
        currencySymbolLabel.layer.borderWidth = 1
        currencySymbolLabel.layer.borderColor = UIColor(named: "BrownishGrey")?.cgColor
    }
}
