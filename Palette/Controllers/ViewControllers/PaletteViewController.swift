//
//  PaletteViewController.swift
//  Palette
//
//  Created by Mehdi MMS on 02/03/2022.
//  Copyright © 2022 Cameron Stuart. All rights reserved.
//

import UIKit

class PaletteViewController: UIViewController {
    
    //MARK: - Properties
    var safeArea: UILayoutGuide {
        return self.view.safeAreaLayoutGuide
    }
    
    var photos: [UnsplashPhoto] = []
    
    //MARK: - Lifecycles
    override func loadView() {
        super.loadView()
        addAllSubViews()
        setupButtonStackView()
        constrainTableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemIndigo
        configureTableView()
    }
    
    //MARK: - Helper Functions
    func addAllSubViews() {
        self.view.addSubview(featureButton)
        self.view.addSubview(randomButton)
        self.view.addSubview(doubleRainbowButton)
        self.view.addSubview(buttonStackView)
        self.view.addSubview(paletteTableView)
    }
    
    func setupButtonStackView() {
        buttonStackView.addArrangedSubview(featureButton)
        buttonStackView.addArrangedSubview(randomButton)
        buttonStackView.addArrangedSubview(doubleRainbowButton)
        buttonStackView.topAnchor.constraint(equalTo: self.safeArea.topAnchor, constant: 16).isActive = true
        buttonStackView.leadingAnchor.constraint(equalTo: self.safeArea.leadingAnchor, constant: 8).isActive = true
        buttonStackView.trailingAnchor.constraint(equalTo: self.safeArea.trailingAnchor, constant: -8).isActive = true
    }
    
    func constrainTableView() {
        paletteTableView.anchor(top: buttonStackView.bottomAnchor, bottom: self.safeArea.bottomAnchor, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0)
    }
    
    func configureTableView() {
        paletteTableView.delegate = self
        paletteTableView.dataSource = self
        paletteTableView.register(PaletteTableViewCell.self, forCellReuseIdentifier: "photoCell")
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
        stackView.translatesAutoresizingMaskIntoConstraints = false
                
        return stackView
    }()
    
    let paletteTableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()

} // End of Class

extension PaletteViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath) as? PaletteTableViewCell else { return UITableViewCell() }
         
        let photo = photos[indexPath.row]
        
        cell.photo = photo
        
        return cell
        
    }
    
    
} // End of Extension
