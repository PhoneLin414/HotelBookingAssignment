//
//  SectionCollectionReusableView.swift
//  HotelBookingAssignment_W5
//
//  Created by SC414 on 9/7/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class SectionCollectionReusableView: UICollectionReusableView {

    @IBOutlet weak var lblSectionName: UILabel!
    
    var mData : String = ""
    {
        didSet {
            lblSectionName.text = mData
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
