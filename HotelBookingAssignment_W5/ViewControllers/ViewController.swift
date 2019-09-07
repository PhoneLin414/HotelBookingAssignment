//
//  ViewController.swift
//  HotelBookingAssignment_W5
//
//  Created by SC414 on 9/7/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbvHotels: UITableView!
    @IBOutlet weak var imgProfile: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgProfile.layer.borderWidth = 1
        imgProfile.layer.masksToBounds = false
        imgProfile.layer.cornerRadius = imgProfile.frame.height/2
        imgProfile.clipsToBounds = true
        
        tbvHotels.dataSource = self
        tbvHotels.delegate = self
        
        let nib = UINib(nibName: String(describing: HotelTableViewCell.self), bundle: nil)
        tbvHotels.register(nib, forCellReuseIdentifier: String(describing: HotelTableViewCell.self))


    }


}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HotelTableViewCell.self), for: indexPath) as! HotelTableViewCell
        return cell
        
    }
    
    
    
    
    
}

extension ViewController : UITableViewDelegate{
    
    
    
}

