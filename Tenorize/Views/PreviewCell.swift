//
//  PreviewCell.swift
//  Tenorize
//
//  Created by Eric Giannini on 8/29/18.
//  Copyright © 2018 Eric Giannini. All rights reserved.
//

import UIKit

class PreviewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        thumbImageView.image = nil
    }
}
