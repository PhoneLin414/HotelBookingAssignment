//
//  HotelTableViewCell.swift
//  HotelBookingAssignment_W5
//
//  Created by SC414 on 9/7/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class HotelTableViewCell: UITableViewCell {

    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var imgHotel: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        priceView.layer.cornerRadius = 5
        imgHotel.layer.cornerRadius = 10
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
