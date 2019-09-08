//
//  ButtomSheetViewController.swift
//  HotelBookingAssignment_W5
//
//  Created by SC414 on 9/8/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class ButtomSheetViewController: UIViewController {

    @IBOutlet weak var sortbyView: UIView!
    @IBOutlet weak var btnFilterNow: UIButton!
    @IBOutlet weak var btnMap: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        sortbyView.layer.borderWidth = 1
        sortbyView.layer.borderColor =  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        sortbyView.layer.cornerRadius = 10
        sortbyView.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
        btnFilterNow.layer.cornerRadius = 5
        btnMap.layer.cornerRadius = 5
        
    }
    
    
    static func instantiate() -> ButtomSheetViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ButtomSheetViewController") as! ButtomSheetViewController
    }

    
}
