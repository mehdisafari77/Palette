//
//  PaletteViewController.swift
//  Palette
//
//  Created by Mehdi MMS on 02/03/2022.
//  Copyright © 2022 Cameron Stuart. All rights reserved.
//

import UIKit

class PaletteViewController: UIViewController {
    
    //MARK: - Lifecycles
    override func loadView() {
        super.loadView()
        self.view.addSubview(featureButton)
        self.view.addSubview(randomButton)
        self.view.addSubview(doubleRainbowButton)
        self.view.addSubview(buttonStackView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemIndigo
    }
    
    //MARK: - Views
    let featureButton: UIButton = {
        let button = UIButton()
        button.setTitle("Feature", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.contentHorizontalAlignment = .center
        
        return button
    }()
    
    let randomButton: UIButton = {
        let button = UIButton()
        button.setTitle("Random", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.contentHorizontalAlignment = .center

        return button
    }()
    
    let doubleRainbowButton: UIButton = {
        let button = UIButton()
        button.setTitle("Double Rainbow", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.contentHorizontalAlignment = .center

        return button
    }()
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalCentering
        
        
        return stackView
    }()

} // End of Class
