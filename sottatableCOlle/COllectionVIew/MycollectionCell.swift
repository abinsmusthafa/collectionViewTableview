//
//  MycollectionCell.swift
//  sottatableCOlle
//
//  Created by Abins Musthafa on 01/06/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import UIKit

class MycollectionCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.backgroundColor = .red
        backgroundColor = .cyan
        
    }
    override func layoutSubviews() {
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        
    }
}
