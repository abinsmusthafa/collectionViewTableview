//
//  MyTableViewCell.swift
//  sottatableCOlle
//
//  Created by Abins Musthafa on 01/06/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

   
    @IBOutlet weak var mycollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}


