//
//  HotelCollectionViewCell.swift
//  HotelBookingAssignment_W5
//
//  Created by SC414 on 9/7/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class HotelCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgCollection: UIImageView!
    
    @IBOutlet weak var ratingView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgCollection.layer.cornerRadius = 20
        ratingView.layer.cornerRadius = 5
        
        
    }

}
