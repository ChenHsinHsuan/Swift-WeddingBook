//
//  GiftCollectionViewCell.swift
//  wedding-book
//
//  Created by aircon on 09/03/2018.
//  Copyright © 2018 aircon. All rights reserved.
//

import UIKit

class GiftCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var genderView: UIView!
    //man   #90caf9 -> UIColor(red:0.56, green:0.79, blue:0.98, alpha:1.0)
    //woman #f48fb1 -> UIColor(red:0.96, green:0.56, blue:0.69, alpha:1.0)
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
}
