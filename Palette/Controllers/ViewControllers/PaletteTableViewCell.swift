//
//  PaletteTableViewCell.swift
//  Palette
//
//  Created by Mehdi MMS on 02/03/2022.
//  Copyright © 2022 Cameron Stuart. All rights reserved.
//

import UIKit

class PaletteTableViewCell: UITableViewCell {

    //MARK: - Properties
    var photo: UnsplashPhoto? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Lifecycles
    override func layoutSubviews() {
        super.layoutSubviews()
        addAllSubviews()
    }
    
    //MARK: - Helper Methods
    func updateViews() {
        
    }
    
    func addAllSubviews() {
        self.addSubview(paletteImageView)
        self.addSubview(paletteTitleLabel)
    }
    
    func constrainImageView() {
        let imageViewWidth = self.contentView.frame.width - 64
        
        paletteImageView.anchor(top: self.contentView.topAnchor, bottom: nil, leading: self.contentView.leadingAnchor, trailing: self.contentView.trailingAnchor, paddingTop: 16, paddingBottom: 0, paddingLeft: 32, paddingRight: 32, width: imageViewWidth, height: imageViewWidth)
    }
    
    //MARK: - Views
    let paletteImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 12
        imageView.contentMode = .scaleAspectFill
        
        return imageView
        
    }()
    
    let paletteTitleLabel: UILabel = {
        let label = UILabel()
        
        return label
        
    }()

} // End of Class
