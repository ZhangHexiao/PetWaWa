//
//  CategoryCollectionViewCell.swift
//  PetWaWa
//
//  Created by Hexiao Zhang on 2020-09-26.
//  Copyright © 2020 Hexiao Zhang. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var image: UIImageView!

    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with category: Category) {
        
        title.text = category.name
//        image.image = category.image
    }
}
